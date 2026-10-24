# first_dyadic_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e04bb65-acc9-93e2-6456-8d8ad9dbf7b8",
  "kind": "theorem",
  "lexical_name": "first_dyadic_block",
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
  "slug": "first-dyadic-block--56592a91bee99ef1a9245867",
  "source": {
    "blob": "ac46ebe9edb95d44e9280e65f219f5baa1a0dff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56592a91bee99ef1a9245867bc7cc90335fe509abcbd130b1ce1064dcd78a3fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e04bb65-acc9-93e2-6456-8d8ad9dbf7b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_dyadic_block (X n : ℕ) (hn : X < n) (hn2 : n < 2 * X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      -(moebius n : ℝ) := by
  have hn0 : n ≠ 0 := by omega
  have hn1 : n ≠ 1 := by omega
  have he : n.divisors.filter (fun d => d ≤ X) = n.divisors.erase n := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_erase]
    constructor
    · rintro ⟨hd, hdX⟩
      exact ⟨by omega, hd⟩
    · rintro ⟨hdn, hd⟩
      refine ⟨hd, ?_⟩
      by_contra hgt
      have hdX : X < d := by omega
      obtain ⟨k, hk⟩ := Nat.dvd_of_mem_divisors hd
      have hk2 : 2 ≤ k := by
        by_contra h
        have : k = 0 ∨ k = 1 := by omega
        rcases this with rfl | rfl
        · simp_all
        · simp_all
      nlinarith
  rw [he, Finset.sum_erase_eq_sub (Nat.mem_divisors_self n hn0), divisor_sum, if_neg hn1]
  ring

/-- The original reciprocal-prefix endpoint changes precisely the coefficient at X. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac46ebe9edb95d44e9280e65f219f5baa1a0dff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
