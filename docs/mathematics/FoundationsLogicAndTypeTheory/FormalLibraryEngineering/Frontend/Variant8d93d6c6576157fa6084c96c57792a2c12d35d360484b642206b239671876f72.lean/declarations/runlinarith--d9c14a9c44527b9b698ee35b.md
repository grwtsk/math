# runLinarith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ef66ccb9e062d432c9f8d86fa7258762096eb03cb19cd0302147e2b2ff00ef0",
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
  "slug": "runlinarith--d9c14a9c44527b9b698ee35b",
  "source": {
    "blob": "c85d90d2356618bdac4bf82a55d26e05805b9e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9c14a9c44527b9b698ee35b31b56a7e5a3c1d68618501b25cd96815b2be3db8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ef66ccb9e062d432c9f8d86fa7258762096eb03cb19cd0302147e2b2ff00ef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runLinarith (cfg : LinarithConfig) (prefType : Option Expr) (g : MVarId)
    (hyps : List Expr) : MetaM Unit := do
  let singleProcess (g : MVarId) (hyps : List Expr) : MetaM Expr := g.withContext do
    linarithTraceProofs s!"after preprocessing, linarith has {hyps.length} facts:" hyps
    let mut hyp_set ← partitionByType hyps
    trace[linarith] "hypotheses appear in {hyp_set.size} different types"
    -- If we have a preferred type, strip it from `hyp_set` and prepare a handler with a custom
    -- trace message
    let pref : MetaM _ ← do
      if let some t := prefType then
        let (i, vs) ← hyp_set.find t
        hyp_set := hyp_set.eraseIdxIfInBounds i
        pure <|
          withTraceNode `linarith (return m!"{exceptEmoji ·} running on preferred type {t}") <|
            proveFalseByLinarith cfg.transparency cfg.oracle cfg.discharger g vs
      else
        pure failure
    pref <|> findLinarithContradiction cfg g hyp_set.toList
  let mut preprocessors := cfg.preprocessors
  if cfg.splitNe then
    preprocessors := Linarith.removeNe :: preprocessors
  if cfg.splitHypotheses then
    preprocessors := Linarith.splitConjunctions.globalize.branching :: preprocessors
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85d90d2356618bdac4bf82a55d26e05805b9e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
