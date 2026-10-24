# KaehlerDifferential.quotKerTotalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b03394470ac6e6d9402c33b8333462c5b277b3c85539fc90dc13196ba81e288",
  "kind": "def",
  "lexical_name": "KaehlerDifferential.quotKerTotalEquiv",
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
  "slug": "kaehlerdifferential-quotkertotalequiv--81dc34c15fa215ba8490af4b",
  "source": {
    "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 550,
    "path": "GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81dc34c15fa215ba8490af4be7517ec7b9e9bef99d18b29279bde48ffa3d6079",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b03394470ac6e6d9402c33b8333462c5b277b3c85539fc90dc13196ba81e288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def KaehlerDifferential.quotKerTotalEquiv :
    ((S →₀ S) ⧸ KaehlerDifferential.kerTotal R S) ≃ₗ[S] Ω[S⁄R] :=
  { (KaehlerDifferential.kerTotal R S).liftQ
      (Finsupp.linearCombination S (KaehlerDifferential.D R S))
      (KaehlerDifferential.kerTotal_eq R S).ge with
    invFun := (KaehlerDifferential.derivationQuotKerTotal R S).liftKaehlerDifferential
    left_inv := by
      intro x
      obtain ⟨x, rfl⟩ := Submodule.mkQ_surjective _ x
      exact
        LinearMap.congr_fun
          (KaehlerDifferential.derivationQuotKerTotal_lift_comp_linearCombination R S :) x
    right_inv := by
      intro x
      obtain ⟨x, rfl⟩ := KaehlerDifferential.linearCombination_surjective R S x
      have := LinearMap.congr_fun
        (KaehlerDifferential.derivationQuotKerTotal_lift_comp_linearCombination R S) x
      rw [LinearMap.comp_apply] at this
      rw [this]
      rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cef68402fb7b80b00ca0436233549a4e9ceee37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
