# le_lexOrder_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a95d4e516ff75fd7c8752aa5c7271057f49b323f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:466721f3-f57b-8927-1c86-cb5ba9214f31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85ce1fc0-acea-a3ee-2b9b-5a94d6fde8f6",
  "kind": "theorem",
  "lexical_name": "le_lexOrder_mul",
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
  "slug": "le-lexorder-mul--6c24ecb4855439b38b6753d1",
  "source": {
    "blob": "a95d4e516ff75fd7c8752aa5c7271057f49b323f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 134,
    "path": "GRWTSK/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c24ecb4855439b38b6753d16d7c61c806e6bc587d6ca25b31f4d4e2f16d9362",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85ce1fc0-acea-a3ee-2b9b-5a94d6fde8f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_lexOrder_mul (φ ψ : MvPowerSeries σ R) :
    lexOrder φ + lexOrder ψ ≤ lexOrder (φ * ψ) := by
  rw [le_lexOrder_iff]
  intro d hd
  rw [coeff_mul]
  apply Finset.sum_eq_zero
  rintro ⟨u, v⟩ h
  simp only [Finset.mem_antidiagonal] at h
  simp only
  suffices toLex u < lexOrder φ ∨ toLex v < lexOrder ψ by
    rcases this with (hu | hv)
    · rw [coeff_eq_zero_of_lt_lexOrder hu, zero_mul]
    · rw [coeff_eq_zero_of_lt_lexOrder hv, mul_zero]
  rw [or_iff_not_imp_left, not_lt, ← not_le]
  intro hu hv
  rw [← not_le] at hd
  apply hd
  simp only [← h, toLex_add, WithTop.coe_add, add_le_add hu hv]

alias lexOrder_mul_ge := le_lexOrder_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95d4e516ff75fd7c8752aa5c7271057f49b323f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
