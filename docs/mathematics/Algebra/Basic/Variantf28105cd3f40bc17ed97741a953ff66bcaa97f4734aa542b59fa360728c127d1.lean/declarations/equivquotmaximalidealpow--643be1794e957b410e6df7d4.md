# equivQuotMaximalIdealPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc7eeb62731e9218a4f4e32407cc2c120ed2170ec246a9a410ff2806f36db582",
  "kind": "def",
  "lexical_name": "equivQuotMaximalIdealPow",
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
  "slug": "equivquotmaximalidealpow--643be1794e957b410e6df7d4",
  "source": {
    "blob": "7eebc43c1d7f01f6484aae60c4c7433c8b48c39a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 614,
    "path": "GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:643be1794e957b410e6df7d4e4f736a71a511142df42bbddd4b870037b08be7f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc7eeb62731e9218a4f4e32407cc2c120ed2170ec246a9a410ff2806f36db582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivQuotMaximalIdealPow (n : ℕ) : (R ⧸ p ^ n) ≃ₐ[R] Rₚ ⧸ IsLocalRing.maximalIdeal Rₚ ^ n := by
  refine AlgEquiv.ofAlgHom (Ideal.Quotient.liftₐ _ (Algebra.ofId _ _) ?_) ?_ ?_ ?_
  · simp_rw [ofId_apply, ← RingHom.mem_ker, ← SetLike.le_def]
    rw [← Quotient.mk_comp_algebraMap, ← RingHom.comap_ker, mk_ker, ← under_def,
      under_maximalIdeal_pow p]
  · refine Ideal.Quotient.liftₐ _
      (IsLocalization.liftAlgHom (f := Ideal.Quotient.mkₐ R (p ^ n)) fun (u : p.primeCompl) ↦
        Ideal.Quotient.isUnit_mk_pow_of_notMem _ <| mem_primeCompl_iff.mp u.prop) fun x hx ↦ ?_
    obtain ⟨a, b, rfl⟩ := IsLocalization.exists_mk'_eq p.primeCompl x
    rw [IsLocalization.mk'_mem_iff, ← Ideal.mem_under, under_maximalIdeal_pow p] at hx
    simpa [lift_mk', Quotient.eq_zero_iff_mem] using hx
  · rw [← AlgHom.cancel_right (Ideal.Quotient.mkₐ_surjective _ _)]
    exact IsLocalization.algHom_ext (W := p.primeCompl) (A := R) (by ext)
  · rw [← AlgHom.cancel_right (Ideal.Quotient.mkₐ_surjective _ _)]
    ext

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebc43c1d7f01f6484aae60c4c7433c8b48c39a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
