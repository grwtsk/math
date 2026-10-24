# toAddMonoidAlgebra_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f9ebc46-4c85-ab75-b300-5ef4df1d3730",
  "kind": "theorem",
  "lexical_name": "toAddMonoidAlgebra_natCast",
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
  "slug": "toaddmonoidalgebra-natcast--397e735ec317e06f38efe55b",
  "source": {
    "blob": "36d1e3c09cd56987ec76ae4b18acd0419625c941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 186,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397e735ec317e06f38efe55b82070663cb6d1c6ce7c88c948050cf085955d996",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f9ebc46-4c85-ab75-b300-5ef4df1d3730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAddMonoidAlgebra_natCast [AddMonoid ι] [Semiring M] [∀ m : M, Decidable (m ≠ 0)] (n : ℕ) :
    (n : ⨁ _ : ι, M).toAddMonoidAlgebra = n := by
  ext : 1; exact DFinsupp.toFinsupp_single ..

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36d1e3c09cd56987ec76ae4b18acd0419625c941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
