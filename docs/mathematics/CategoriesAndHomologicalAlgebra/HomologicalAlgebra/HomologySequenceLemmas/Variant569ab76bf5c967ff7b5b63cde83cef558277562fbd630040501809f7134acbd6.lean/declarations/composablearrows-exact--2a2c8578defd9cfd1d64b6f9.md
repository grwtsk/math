# composableArrows₂_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71ca5564-f88b-ddd3-2a34-d7365fa90961",
  "kind": "lemma",
  "lexical_name": "composableArrows₂_exact",
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
  "slug": "composablearrows-exact--2a2c8578defd9cfd1d64b6f9",
  "source": {
    "blob": "302a7bb2044f29e55c860d19f0507d506716320d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2c8578defd9cfd1d64b6f952e2609d66d3fd06d13c14befda269c8fe1e3bf2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71ca5564-f88b-ddd3-2a34-d7365fa90961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma composableArrows₂_exact (hS₁ : S₁.ShortExact) (i : ι) :
    (composableArrows₂ S₁ i).Exact :=
  (hS₁.homology_exact₂ i).exact_toComposableArrows

/-- The (exact) sequence
`H_i(S.X₁) ⟶ H_i(S.X₂) ⟶ H_i(S.X₃) ⟶ H_j(S.X₁) ⟶ H_j(S.X₂) ⟶ H_j(S.X₃)` when `c.Rel i j`
and `S` is a short exact short complex of homological complexes in an abelian category. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `302a7bb2044f29e55c860d19f0507d506716320d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
