# not_id_apply_prime_of_gt_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dbd2551-fe32-f55e-2a04-5b66318015ea",
  "kind": "theorem",
  "lexical_name": "not_id_apply_prime_of_gt_eq_one",
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
  "slug": "not-id-apply-prime-of-gt-eq-one--f33e30087cb536445c94214d",
  "source": {
    "blob": "5b0937d10f8a03d15058e87e045307623061c556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f33e30087cb536445c94214de5e9d7880bfa80f65fd835931ef5f3455e2d986b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dbd2551-fe32-f55e-2a04-5b66318015ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_id_apply_prime_of_gt_eq_one (hf : IsBonza f) (hnf : ¬ ∀ x > (0 : ℕ), f x = x) :
    ∃ N, ∀ p > N, p.Prime → f p = 1 := by
  obtain ⟨b, hb, ne⟩ : ∃ b, 0 < b ∧ f b ≠ b := Set.not_subset.mp hnf
  use ((b : ℤ) - (f b : ℤ)).natAbs
  intro p _ pp
  have : f p = 1 ∨ (p : ℤ) ∣ (b : ℤ) - (f b : ℤ) :=
    Or.casesOn (hf.apply_prime_eq_one_or_dvd_self_sub_apply pp) (by grind) (by grind)
  rcases this with ch | ch
  · exact ch
  · have : p ≤ ((b : ℤ) - (f b : ℤ)).natAbs := natAbs_le_of_dvd_ne_zero ch (by grind)
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0937d10f8a03d15058e87e045307623061c556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
