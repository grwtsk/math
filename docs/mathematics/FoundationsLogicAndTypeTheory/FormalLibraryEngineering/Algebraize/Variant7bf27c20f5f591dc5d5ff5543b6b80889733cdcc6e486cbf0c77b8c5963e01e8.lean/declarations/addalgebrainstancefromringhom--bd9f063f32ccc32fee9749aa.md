# addAlgebraInstanceFromRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:760c0965e53ab3d101536ad5516443e2e5b4a5e43feeb539637f1c02fe56b3b6",
  "kind": "def",
  "lexical_name": "addAlgebraInstanceFromRingHom",
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
  "slug": "addalgebrainstancefromringhom--bd9f063f32ccc32fee9749aa",
  "source": {
    "blob": "ee9d51f62616b632e2344b938a216e8265b1a0b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd9f063f32ccc32fee9749aa43ec48250a0bdf479464e75863520de427c3fcab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:760c0965e53ab3d101536ad5516443e2e5b4a5e43feeb539637f1c02fe56b3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addAlgebraInstanceFromRingHom (f ft : Expr) : TacticM Unit := withMainContext do
  let (_, l) := ft.getAppFnArgs
  -- The type of the corresponding algebra instance
  let alg ← mkAppOptM ``Algebra #[l[0]!, l[1]!, none, none]
  -- If the instance already exists, we do not do anything
  unless (← synthInstance? alg).isSome do
  liftMetaTactic fun mvarid => do
    let nm ← mkFreshBinderNameForTactic `algInst
    let mvar ← mvarid.define nm alg (← mkAppM ``RingHom.toAlgebra #[f])
    let (_, mvar) ← mvar.intro1P
    return [mvar]

/-- Given an expression `g.comp f` which is the composition of two `RingHom`s, this function adds
the instance `IsScalarTower A B C` to the context (if it does not already exist). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee9d51f62616b632e2344b938a216e8265b1a0b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
