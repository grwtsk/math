# solveByElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18c7e89b91dc5e8caf2c097ebe3322fa67b0f7e3744d88c5e4389ea6fd514988",
  "kind": "def",
  "lexical_name": "solveByElim",
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
  "slug": "solvebyelim--8cd40872bb5bf5e8f0fe94f9",
  "source": {
    "blob": "334ea0e5df7b1ae48597b1fff1fa79ae55a3b575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cd40872bb5bf5e8f0fe94f9566bd2f0b0ca463157d08b7bc51393bd2ef3ddf9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18c7e89b91dc5e8caf2c097ebe3322fa67b0f7e3744d88c5e4389ea6fd514988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solveByElim (goals : List MVarId) (depth : Nat := 6) : MetaM PUnit := do
  -- There is only a marginal decrease in performance for using the `symm` option for `solveByElim`.
  -- (measured via `lake build && time lake env lean test/librarySearch.lean`).
  let cfg : SolveByElimConfig := { maxDepth := depth, exfalso := false, symm := true }
  let ⟨lemmas, ctx⟩ ← mkAssumptionSet false false [] [] #[]
  let [] ← SolveByElim.solveByElim cfg lemmas ctx goals
    | failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334ea0e5df7b1ae48597b1fff1fa79ae55a3b575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
