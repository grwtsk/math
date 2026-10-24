# card_le_two_pow_mul_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "914eeefba8a811f4f62245705a7b2de19437d216",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12c1d42e-1a59-a5cc-253c-2dedd6e00ec8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39163cd8-b393-8c42-b7b5-28d9c203fd8d",
  "kind": "theorem",
  "lexical_name": "card_le_two_pow_mul_sqrt",
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
  "slug": "card-le-two-pow-mul-sqrt--da40c50874a0c294c7caf9b5",
  "source": {
    "blob": "914eeefba8a811f4f62245705a7b2de19437d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da40c50874a0c294c7caf9b588b3afbbd8738ef3555a2ab5b15424a1e27cede0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39163cd8-b393-8c42-b7b5-28d9c203fd8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_two_pow_mul_sqrt {x k : ℕ} : #(M x k) ≤ 2 ^ k * Nat.sqrt x := by
  let M₁ := {e ∈ M x k | Squarefree (e + 1)}
  let M₂ := M (Nat.sqrt x) k
  let K := M₁ ×ˢ M₂
  let f : ℕ × ℕ → ℕ := fun mn => (mn.2 + 1) ^ 2 * (mn.1 + 1) - 1
  -- Every element of `M x k` is one less than the product `(m + 1)² * (r + 1)` with `r + 1`
  -- squarefree and `m + 1 ≤ √x`, and both `m + 1` and `r + 1` still only have prime powers
  -- smaller than or equal to `k`.
  have h1 : M x k ⊆ image f K := by
    intro m hm
    simp only [f, K, M, M₁, M₂, mem_image, exists_prop, Prod.exists, mem_product,
               mem_filter, mem_range] at hm ⊢
    have hm' := m.zero_lt_succ
    obtain ⟨a, b, hab₁, hab₂⟩ := Nat.sq_mul_squarefree_of_pos' hm'
    obtain ⟨ham, hbm⟩ := Dvd.intro_left _ hab₁, Dvd.intro _ hab₁
    refine ⟨a, b, ⟨⟨⟨?_, fun p hp => ?_⟩, hab₂⟩, ⟨?_, fun p hp => ?_⟩⟩, by
        simp_rw [hab₁, m.add_one_sub_one]⟩
    · exact (Nat.succ_le_succ_iff.mp (Nat.le_of_dvd hm' ham)).trans_lt hm.1
    · exact hm.2 p ⟨hp.1, hp.2.trans ham⟩
    · calc
        b < b + 1 := lt_add_one b
        _ ≤ (m + 1).sqrt := by simpa only [Nat.le_sqrt, pow_two] using Nat.le_of_dvd hm' hbm
        _ ≤ x.sqrt := Nat.sqrt_le_sqrt (Nat.succ_le_iff.mpr hm.1)
    · exact hm.2 p ⟨hp.1, hp.2.trans (Nat.dvd_of_pow_dvd one_le_two hbm)⟩
  have h2 : #M₂ ≤ Nat.sqrt x := by
    rw [← card_range (Nat.sqrt x)]; apply card_le_card; simp [M, M₂]
  calc
    #(M x k) ≤ #(image f K) := card_le_card h1
    _ ≤ #K := card_image_le
    _ = #M₁ * #M₂ := card_product M₁ M₂
    _ ≤ 2 ^ k * x.sqrt := mul_le_mul' card_le_two_pow h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914eeefba8a811f4f62245705a7b2de19437d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
