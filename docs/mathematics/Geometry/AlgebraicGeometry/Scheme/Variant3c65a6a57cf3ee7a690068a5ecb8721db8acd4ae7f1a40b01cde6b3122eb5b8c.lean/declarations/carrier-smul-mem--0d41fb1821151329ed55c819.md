# carrier.smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:278efc61-2abf-6ac0-12e6-2e9805e2bbbb",
  "kind": "theorem",
  "lexical_name": "carrier.smul_mem",
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
  "slug": "carrier-smul-mem--0d41fb1821151329ed55c819",
  "source": {
    "blob": "c6413c91e5acbaee81d56b987c765cce0d34c551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 402,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d41fb1821151329ed55c819635e7035e2f1465df4039bb11571bd3d7b47071b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278efc61-2abf-6ac0-12e6-2e9805e2bbbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carrier.smul_mem (c x : A) (hx : x ∈ carrier f_deg q) : c • x ∈ carrier f_deg q := by
  revert c
  refine DirectSum.Decomposition.inductionOn 𝒜 ?_ ?_ ?_
  · rw [zero_smul]; exact carrier.zero_mem f_deg hm _
  · rintro n ⟨a, ha⟩ i
    simp_rw [proj_apply, smul_eq_mul, coe_decompose_mul_of_left_mem 𝒜 i ha]
    let product : A⁰_ f :=
      (HomogeneousLocalization.mk
          ⟨_, ⟨a ^ m, pow_mem_graded m ha⟩, ⟨_, ?_⟩, ⟨n, rfl⟩⟩ : A⁰_ f) *
        (HomogeneousLocalization.mk
          ⟨_, ⟨proj 𝒜 (i - n) x ^ m, by mem_tac⟩, ⟨_, ?_⟩, ⟨i - n, rfl⟩⟩ : A⁰_ f)
    · split_ifs with h
      · convert_to product ∈ q.1
        · dsimp [product]
          rw [HomogeneousLocalization.ext_iff_val, HomogeneousLocalization.val_mk,
            HomogeneousLocalization.val_mul, HomogeneousLocalization.val_mk,
            HomogeneousLocalization.val_mk]
          · simp_rw [mul_pow]; rw [Localization.mk_mul]
            · congr; rw [← pow_add, Nat.add_sub_of_le h]
        · apply Ideal.mul_mem_left (α := A⁰_ f) _ _ (hx _)
          rw [(_ : m • n = _)]
          · mem_tac
          · simp only [smul_eq_mul, mul_comm]
      · simpa only [map_zero, zero_pow hm.ne'] using zero_mem f_deg hm q i
    rw [(_ : m • (i - n) = _)]
    · mem_tac
    · simp only [smul_eq_mul, mul_comm]
  · simp_rw [add_smul]; exact fun _ _ => carrier.add_mem f_deg q

/-- For a prime ideal `q` in `A⁰_f`, the set `{a | aᵢᵐ/fⁱ ∈ q}` as an ideal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6413c91e5acbaee81d56b987c765cce0d34c551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
