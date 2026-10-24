# restrictOrthogonalSpanSingletonNondegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e160cbf-d893-e8b6-b917-5664a99b29ca",
  "kind": "theorem",
  "lexical_name": "restrictOrthogonalSpanSingletonNondegenerate",
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
  "slug": "restrictorthogonalspansingletonnondegenerate--5cedb63553521c18430ccb06",
  "source": {
    "blob": "d1b0f0a4a96d05faabf6807d24166bd2c46adb44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1541,
    "line": 1528,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cedb63553521c18430ccb069ffcb6821506648591285fc08718bee895e18157",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e160cbf-d893-e8b6-b917-5664a99b29ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1528–1541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictOrthogonalSpanSingletonNondegenerate (B : BilinForm K V) (b₁ : B.Nondegenerate)
    (b₂ : B.IsRefl) {x : V} (hx : ¬B.IsOrtho x x) :
    Nondegenerate <| B.restrict <| B.orthogonal (K ∙ x) := by
  refine' fun m hm => Submodule.coe_eq_zero.1 (b₁ m.1 fun n => _)
  have : n ∈ (K ∙ x) ⊔ B.orthogonal (K ∙ x) :=
    (span_singleton_sup_orthogonal_eq_top hx).symm ▸ Submodule.mem_top
  rcases Submodule.mem_sup.1 this with ⟨y, hy, z, hz, rfl⟩
  specialize hm ⟨z, hz⟩
  rw [restrict] at hm
  erw [add_right, show B m.1 y = 0 by rw [b₂]; exact m.2 y hy, hm, add_zero]
#align bilin_form.restrict_orthogonal_span_singleton_nondegenerate BilinForm.restrictOrthogonalSpanSingletonNondegenerate

section LinearAdjoints

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean#L1528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b0f0a4a96d05faabf6807d24166bd2c46adb44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
