# le_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d640abbe-2024-ec8c-0055-313891c2a53a",
  "kind": "theorem",
  "lexical_name": "le_weight",
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
  "slug": "le-weight--396bf8690b7270b91ebaab3f",
  "source": {
    "blob": "0f46f382cbcc1c0618a76b8bc8c53b7d9eccccf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396bf8690b7270b91ebaab3faa277b5c08a104e6955811cfd5df811b388f0adb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d640abbe-2024-ec8c-0055-313891c2a53a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_weight (w : σ → ℕ) {s : σ} (hs : w s ≠ 0) (f : σ →₀ ℕ) :
    f s ≤ weight w f := by
  classical
  simp only [weight_apply, Finsupp.sum]
  by_cases h : s ∈ f.support
  · rw [Finset.sum_eq_add_sum_diff_singleton h]
    refine le_trans ?_ (Nat.le_add_right _ _)
    apply Nat.le_mul_of_pos_right
    exact Nat.zero_lt_of_ne_zero hs
  · simp only [notMem_support_iff] at h
    rw [h]
    apply zero_le

variable [AddCommMonoid M] [PartialOrder M] [IsOrderedAddMonoid M] (w : σ → M)
  {R : Type*} [CommSemiring R] [PartialOrder R] [IsOrderedRing R]
  [CanonicallyOrderedAdd R] [NoZeroDivisors R] [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f46f382cbcc1c0618a76b8bc8c53b7d9eccccf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
