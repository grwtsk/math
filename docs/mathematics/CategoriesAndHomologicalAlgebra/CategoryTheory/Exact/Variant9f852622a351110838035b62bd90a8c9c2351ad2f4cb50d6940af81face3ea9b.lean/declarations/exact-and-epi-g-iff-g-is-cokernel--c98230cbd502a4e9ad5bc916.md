# exact_and_epi_g_iff_g_is_cokernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f653861-b604-a704-b7dd-13672f58ff7c",
  "kind": "lemma",
  "lexical_name": "exact_and_epi_g_iff_g_is_cokernel",
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
  "slug": "exact-and-epi-g-iff-g-is-cokernel--c98230cbd502a4e9ad5bc916",
  "source": {
    "blob": "957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 843,
    "line": 824,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c98230cbd502a4e9ad5bc916d7255de089d8aad3797e331aaed59e43167b2d0d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f653861-b604-a704-b7dd-13672f58ff7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exact_and_epi_g_iff_g_is_cokernel [S.HasHomology] :
    S.Exact ∧ Epi S.g ↔ Nonempty (IsColimit (CokernelCofork.ofπ S.g S.zero)) := by
  constructor
  · intro ⟨hS, _⟩
    exact ⟨hS.gIsCokernel⟩
  · intro ⟨hS⟩
    exact ⟨S.exact_of_g_is_cokernel hS, epi_of_isColimit_cofork hS⟩

end Balanced

end Preadditive

section Abelian

variable [Abelian C]

/-- Given a morphism of short complexes `φ : S₁ ⟶ S₂` in an abelian category, if `S₁.f`
and `S₁.g` are zero (e.g. when `S₁` is of the form `0 ⟶ S₁.X₂ ⟶ 0`) and `S₂.f = 0`
(e.g when `S₂` is of the form `0 ⟶ S₂.X₂ ⟶ S₂.X₃`), then `φ` is a quasi-isomorphism iff
the obvious short complex `S₁.X₂ ⟶ S₂.X₂ ⟶ S₂.X₃` is exact and `φ.τ₂` is a mono). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
