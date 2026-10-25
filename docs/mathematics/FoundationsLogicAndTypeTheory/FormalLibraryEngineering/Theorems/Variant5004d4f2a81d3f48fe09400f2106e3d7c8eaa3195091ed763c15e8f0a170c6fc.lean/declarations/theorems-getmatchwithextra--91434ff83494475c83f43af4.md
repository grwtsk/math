# Theorems.getMatchWithExtra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c329adf1209da326abe5ba577e7645f04248cd8d456ec24c49d50683e1b13ea9",
  "kind": "def",
  "lexical_name": "Theorems.getMatchWithExtra",
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
  "slug": "theorems-getmatchwithextra--91434ff83494475c83f43af4",
  "source": {
    "blob": "46a348406fecc28002a9f23519348b5c80aa515d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91434ff83494475c83f43af4be12735c372c2750fc14a02167bf6c0572fec043",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c329adf1209da326abe5ba577e7645f04248cd8d456ec24c49d50683e1b13ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Theorems.getMatchWithExtra (thms : Theorems) (e : Expr) : Array (Theorem × Nat) :=
  Sym.getMatchWithExtra thms.thms e

/--
Check whether `lhs` and `rhs` (with `numVars` pattern variables represented as `.bvar` indices
`≥ 0` before any binder entry) are permutations of each other — same structure with only
pattern variable indices rearranged via a consistent bijection.

Bvars with index `< offset` are "local" (introduced by binders inside the pattern) and must
match exactly. Bvars with index `≥ offset` are pattern variables and may be permuted,
but the mapping must be a bijection.

Simplified compared to `Meta.simp`'s `isPerm`:
- Uses de Bruijn indices instead of metavariables
- No `.proj` (folded into applications) or `.letE` (zeta-expanded) cases
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46a348406fecc28002a9f23519348b5c80aa515d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
