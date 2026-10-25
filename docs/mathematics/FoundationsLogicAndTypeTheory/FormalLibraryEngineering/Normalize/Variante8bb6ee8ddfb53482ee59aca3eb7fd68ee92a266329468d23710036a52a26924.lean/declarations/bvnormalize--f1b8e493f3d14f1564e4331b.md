# bvNormalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e98bcbce4525c4b578a433b87de58f06c27378c5d6f75159ab752787dddcd2c7",
  "kind": "def",
  "lexical_name": "bvNormalize",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "bvnormalize--f1b8e493f3d14f1564e4331b",
  "source": {
    "blob": "61577e4df07cbbc51f8f66abb49662ed49669189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variante8bb6ee8ddfb53482ee59aca3eb7fd68ee92a266329468d23710036a52a26924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1b8e493f3d14f1564e4331b33568501959c47b7126d35f74ac328223a2196a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variante8bb6ee8ddfb53482ee59aca3eb7fd68ee92a266329468d23710036a52a26924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e98bcbce4525c4b578a433b87de58f06c27378c5d6f75159ab752787dddcd2c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def bvNormalize (g : MVarId) (cfg : Elab.Tactic.BVDecide.BVDecideConfig) :
    MetaM (Option MVarId) := do
  withTraceNode `Meta.Tactic.bv (fun _ => return "Preprocessing goal") do
    (go g).run cfg g
where
  go (g : MVarId) : PreProcessM (Option MVarId) := do
    let some g' ← g.falseOrByContra | return none
    let mut g := g'

    trace[Meta.Tactic.bv] m!"Running preprocessing pipeline on:\n{g}"
    let cfg ← PreProcessM.getConfig

    if cfg.structures || cfg.enums then
      let some g' ← typeAnalysisPass.run g | return none
      g := g'

    /-
    There is a tension between the structures and enums pass at play:
    1. Enums should run before structures as it could convert matches on enums into `cond`
       chains. This in turn can be used by the structures pass to float projections into control
       flow which might be necessary.
    2. Structures should run before enums as it could reveal new facts about enums that we might
       need to handle. For example a structure might contain a field that contains a fact about
       some enum. This fact needs to be processed properly by the enums pass

    To resolve this tension we do the following:
    1. Run the structures pass (if enabled)
    2. Run the enums pass (if enabled)
    3. Within the enums pass we rerun the part of the structures pass that could profit from the
       enums pass as described above. This comes down to adding a few more lemmas to a simp
       invocation that is going to happen in the enums pass anyway and should thus be cheap.
    -/
    if cfg.structures then
      let some g' ← structuresPass.run g | return none
      g := g'

    if cfg.enums then
      let some g' ← enumsPass.run g | return none
      g := g'

    if cfg.fixedInt then
      let some g' ← intToBitVecPass.run g | return none
      g := g'

    trace[Meta.Tactic.bv] m!"Running fixpoint pipeline on:\n{g}"
    let pipeline ← passPipeline
    let some g' ← Pass.fixpointPipeline pipeline g | return none
    /-
    Run short circuiting once post fixpoint, as it increases the size of terms with
    the aim of exposing potential short-circuit reasoning to the solver.
    -/
    if cfg.shortCircuit then
      shortCircuitPass |>.run g'
    else
      return g'

end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variante8bb6ee8ddfb53482ee59aca3eb7fd68ee92a266329468d23710036a52a26924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variante8bb6ee8ddfb53482ee59aca3eb7fd68ee92a266329468d23710036a52a26924.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61577e4df07cbbc51f8f66abb49662ed49669189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
