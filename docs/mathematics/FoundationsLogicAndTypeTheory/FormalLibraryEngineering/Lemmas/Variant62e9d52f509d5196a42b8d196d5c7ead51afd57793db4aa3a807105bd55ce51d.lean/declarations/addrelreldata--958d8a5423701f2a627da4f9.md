# addRelRelData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5b554d4b4eff07fab6bf81865aa06dfbe03da9d4566cb355a50da2714f34c58",
  "kind": "def",
  "lexical_name": "addRelRelData",
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
  "slug": "addrelreldata--958d8a5423701f2a627da4f9",
  "source": {
    "blob": "d348d6ffbda9c9f7dc4bd2fab1961f7a08f3d940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:958d8a5423701f2a627da4f91b15645f600f151c1c429dd38b49b8d8c0bcb9de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5b554d4b4eff07fab6bf81865aa06dfbe03da9d4566cb355a50da2714f34c58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addRelRelData : Ineq → Ineq → Name
  | eq, eq => ``add_eq_eq
  | eq, le => ``add_eq_le
  | eq, lt => ``add_eq_lt
  | le, eq => ``add_le_eq
  | le, le => ``add_le_add
  | le, lt => ``add_lt_add_of_le_of_lt
  | lt, eq => ``add_lt_eq
  | lt, le => ``add_lt_add_of_lt_of_le
  | lt, lt => ``add_lt_add

/-- Finite inductive type extending `Mathlib.Ineq`: a type of inequality (`eq`, `le` or `lt`),
together with, in the case of `lt`, a boolean, typically representing the strictness (< or ≤) of
some other inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d348d6ffbda9c9f7dc4bd2fab1961f7a08f3d940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
