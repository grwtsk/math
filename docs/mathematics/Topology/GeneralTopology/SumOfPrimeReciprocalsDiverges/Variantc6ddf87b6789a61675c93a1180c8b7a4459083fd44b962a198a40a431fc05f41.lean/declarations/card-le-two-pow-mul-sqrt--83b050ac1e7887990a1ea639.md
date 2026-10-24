# card_le_two_pow_mul_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10ae7c2f-caba-3931-87a9-674e310da2b2",
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
  "slug": "card-le-two-pow-mul-sqrt--83b050ac1e7887990a1ea639",
  "source": {
    "blob": "abafe376e464326017245c823a6355307a6dba7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b050ac1e7887990a1ea63937681afbbabf92f72af52e7d0e61fb94fd350bf2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ae7c2f-caba-3931-87a9-674e310da2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–199.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abafe376e464326017245c823a6355307a6dba7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
