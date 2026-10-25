# runLinarith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a711d6785bb93ed0f1cb3e40a782a9edf30f69a1299d4dd7d6ce355d970ef06",
  "kind": "def",
  "lexical_name": "runLinarith",
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
  "slug": "runlinarith--412d64ace1e824da685d349c",
  "source": {
    "blob": "b0c2f17b058b2c932d97154439f265bdb31c646a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:412d64ace1e824da685d349c277278cc485756d854bb1af63f7d06e858bc9dc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a711d6785bb93ed0f1cb3e40a782a9edf30f69a1299d4dd7d6ce355d970ef06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runLinarith (cfg : LinarithConfig) (prefType : Option Expr) (g : MVarId)
    (hyps : List Expr) : MetaM Unit := do
  let singleProcess (g : MVarId) (hyps : List Expr) : MetaM Expr := do
    linarithTraceProofs s!"after preprocessing, linarith has {hyps.length} facts:" hyps
    let hyp_set ← partitionByType hyps
    trace[linarith] "hypotheses appear in {hyp_set.size} different types"
      if let some t := prefType then
        let (i, vs) ← hyp_set.find t
        proveFalseByLinarith cfg g vs <|>
        findLinarithContradiction cfg g ((hyp_set.eraseIdx i).toList.map (·.2))
      else findLinarithContradiction cfg g (hyp_set.toList.map (·.2))
  let preprocessors :=
    (if cfg.splitHypotheses then [Linarith.splitConjunctions.globalize.branching] else []) ++
    cfg.preprocessors.getD defaultPreprocessors
  let preprocessors := if cfg.splitNe then Linarith.removeNe::preprocessors else preprocessors
  let branches ← preprocess preprocessors g hyps
  for (g, es) in branches do
    let r ← singleProcess g es
    g.assign r
  -- Verify that we closed the goal. Failure here should only result from a bad `Preprocessor`.
  (Expr.mvar g).ensureHasNoMVars

-- /--
-- `filterHyps restr_type hyps` takes a list of proofs of comparisons `hyps`, and filters it
-- to only those that are comparisons over the type `restr_type`.
-- -/
-- def filterHyps (restr_type : Expr) (hyps : List Expr) : MetaM (List Expr) :=
--   hyps.filterM (fun h => do
--     let ht ← inferType h
--     match getContrLemma ht with
--     | some (_, htype) => isDefEq htype restr_type
--     | none => return false)

/--
`linarith only_on hyps cfg` tries to close the goal using linear arithmetic. It fails
if it does not succeed at doing this.

* `hyps` is a list of proofs of comparisons to include in the search.
* If `only_on` is true, the search will be restricted to `hyps`. Otherwise it will use all
  comparisons in the local context.
* If `cfg.transparency := semireducible`,
  it will unfold semireducible definitions when trying to match atomic expressions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c2f17b058b2c932d97154439f265bdb31c646a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
