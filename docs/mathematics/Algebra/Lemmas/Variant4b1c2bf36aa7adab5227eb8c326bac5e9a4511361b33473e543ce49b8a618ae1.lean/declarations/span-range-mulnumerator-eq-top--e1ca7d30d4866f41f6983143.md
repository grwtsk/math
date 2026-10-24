# span_range_mulNumerator_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc5d5600d2f7f073d887148bf0a1924e8e419605",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eecc39ac-9572-c2fa-3e0f-0628753647b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:577b7766-fad0-75ae-a3dd-fa4f2d9055a0",
  "kind": "lemma",
  "lexical_name": "span_range_mulNumerator_eq_top",
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
  "slug": "span-range-mulnumerator-eq-top--e1ca7d30d4866f41f6983143",
  "source": {
    "blob": "dc5d5600d2f7f073d887148bf0a1924e8e419605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 30,
    "path": "GRWTSK/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1ca7d30d4866f41f69831431b96c9ebbca72f4d222956494e82aded0fd8fe34",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:577b7766-fad0-75ae-a3dd-fa4f2d9055a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_range_mulNumerator_eq_top {s : Set R}
    (hsone : Ideal.span s = ⊤) {Rₜ : s → Type*} [∀ t, CommRing (Rₜ t)] [∀ t, Algebra R (Rₜ t)]
    [∀ t, IsLocalization.Away t.val (Rₜ t)]
    {p : (t : s) → Set (Rₜ t)} (htone : ∀ (r : s), Ideal.span (p r) = ⊤) :
    Ideal.span (Set.range (IsLocalization.Away.mulNumerator s p)) = ⊤ := by
  rw [← Ideal.radical_eq_top, eq_top_iff, ← hsone, Ideal.span_le]
  intro a ha
  haveI : IsLocalization (Submonoid.powers a) (Rₜ ⟨a, ha⟩) :=
    inferInstanceAs <| IsLocalization.Away (⟨a, ha⟩ : s).val (Rₜ ⟨a, ha⟩)
  have h₁ : Ideal.span (p ⟨a, ha⟩) ≤ Ideal.span
      (algebraMap R (Rₜ ⟨a, ha⟩) '' Set.range (IsLocalization.Away.mulNumerator s p)) := by
    rw [Ideal.span_le]
    intro x hx
    rw [SetLike.mem_coe, IsLocalization.mem_span_map (Submonoid.powers a)]
    refine ⟨a * (IsLocalization.Away.sec a x).1, Ideal.subset_span ⟨⟨⟨a, ha⟩, ⟨x, hx⟩⟩, rfl⟩, ?_⟩
    use ⟨a ^ ((IsLocalization.Away.sec a x).2 + 1), _, rfl⟩
    rw [IsLocalization.eq_mk'_iff_mul_eq, map_pow, map_mul, ← map_pow, pow_add, map_mul,
      ← mul_assoc, IsLocalization.Away.sec_spec a x, mul_comm, pow_one]
  have h₂ : IsLocalization.mk' (Rₜ ⟨a, ha⟩) 1 (1 : Submonoid.powers a) ∈ Ideal.span
      (algebraMap R (Rₜ ⟨a, ha⟩) ''
        (Set.range <| IsLocalization.Away.mulNumerator s p)) := by
    rw [IsLocalization.mk'_one]
    apply h₁
    simp [htone]
  rw [IsLocalization.mem_span_map (Submonoid.powers a)] at h₂
  obtain ⟨y, hy, ⟨-, m, rfl⟩, hyz⟩ := h₂
  rw [IsLocalization.eq] at hyz
  obtain ⟨⟨-, n, rfl⟩, hc⟩ := hyz
  simp only [← mul_assoc, OneMemClass.coe_one, one_mul, mul_one] at hc
  use n + m
  simpa [pow_add, hc] using Ideal.mul_mem_left _ _ hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc5d5600d2f7f073d887148bf0a1924e8e419605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
