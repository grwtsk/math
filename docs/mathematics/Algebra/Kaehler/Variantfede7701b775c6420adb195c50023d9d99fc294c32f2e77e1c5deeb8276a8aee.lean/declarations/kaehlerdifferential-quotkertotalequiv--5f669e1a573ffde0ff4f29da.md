# KaehlerDifferential.quotKerTotalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a862fa0f8c6106140a1c1ee6d0ea5ca24f8d60c83f0dd916090a9321dafe557",
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
  "slug": "kaehlerdifferential-quotkertotalequiv--5f669e1a573ffde0ff4f29da",
  "source": {
    "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 537,
    "path": "GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f669e1a573ffde0ff4f29da3142821d0bd0717dc700cff7377031c35bfeeb42",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a862fa0f8c6106140a1c1ee6d0ea5ca24f8d60c83f0dd916090a9321dafe557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def KaehlerDifferential.quotKerTotalEquiv :
    ((S →₀ S) ⧸ KaehlerDifferential.kerTotal R S) ≃ₗ[S] Ω[S⁄R] :=
  { (KaehlerDifferential.kerTotal R S).liftQ
      (Finsupp.total S (Ω[S⁄R]) S (KaehlerDifferential.D R S))
      (KaehlerDifferential.kerTotal_eq R S).ge with
    invFun := (KaehlerDifferential.derivationQuotKerTotal R S).liftKaehlerDifferential
    left_inv := by
      intro x
      obtain ⟨x, rfl⟩ := Submodule.mkQ_surjective _ x
      exact
        LinearMap.congr_fun (KaehlerDifferential.derivationQuotKerTotal_lift_comp_total R S : _) x
    right_inv := by
      intro x
      obtain ⟨x, rfl⟩ := KaehlerDifferential.total_surjective R S x
      erw [LinearMap.congr_fun (KaehlerDifferential.derivationQuotKerTotal_lift_comp_total R S : _)
          x]
      rfl }
#align kaehler_differential.quot_ker_total_equiv KaehlerDifferential.quotKerTotalEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a05652a6c7cd213e3bea2b18708536e3d79a385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
