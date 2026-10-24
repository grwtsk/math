# isArithFrobAt_localize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bb980ca-a043-ccde-7792-a75a6f0cafa8",
  "kind": "lemma",
  "lexical_name": "isArithFrobAt_localize",
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
  "slug": "isarithfrobat-localize--ca19e37968ae89528d0bc5e2",
  "source": {
    "blob": "7bb04111113b37a40f991b981a834305d3e1e25f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 151,
    "path": "GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca19e37968ae89528d0bc5e204a9e0abbae4304c47907a8cb428b97bb1f7a5cd",
  "verification": {
    "reference": "docs/verification/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bb980ca-a043-ccde-7792-a75a6f0cafa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isArithFrobAt_localize [Q.IsPrime] : H.localize.IsArithFrobAt (maximalIdeal _) := by
  have h : Nat.card (R ⧸ (maximalIdeal _).comap (algebraMap R (Localization.AtPrime Q))) =
      Nat.card (R ⧸ Q.under R) := by
    congr 2
    rw [IsScalarTower.algebraMap_eq R S (Localization.AtPrime Q), ← Ideal.comap_comap,
      Localization.AtPrime.comap_maximalIdeal]
  intro x
  obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective Q.primeCompl x
  simp only [localize, coe_mk, Localization.localRingHom_mk', RingHom.coe_coe, h,
    ← IsLocalization.mk'_pow]
  rw [← IsLocalization.mk'_sub,
    IsLocalization.AtPrime.mk'_mem_maximal_iff (Localization.AtPrime Q) Q]
  simp only [SubmonoidClass.coe_pow, ← Ideal.Quotient.eq_zero_iff_mem]
  simp [H.mk_apply]

/-- Suppose `S` is noetherian and `Q` is a prime of `S` containing all zero divisors.
If `S/R` is unramified at `Q`, then the Frobenius `φ : S →ₐ[R] S` over `Q` is unique. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bb04111113b37a40f991b981a834305d3e1e25f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
