# mul_nonneg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:001e4125-b53c-455f-3754-628fdbca3a22",
  "kind": "theorem",
  "lexical_name": "mul_nonneg_iff",
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
  "slug": "mul-nonneg-iff--ab9e69e8495012137b71d0d5",
  "source": {
    "blob": "350cbc6d49b24051540cf5d302d0b3db629d8b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 342,
    "path": "GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab9e69e8495012137b71d0d50af2467d3d7d35288def3762a8980dca576c3516",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:001e4125-b53c-455f-3754-628fdbca3a22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_nonneg_iff {a b : R} : 0 ≤ a * b ↔ 0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0 := by
  rcases LinearOrder.trichotomy 0 a with (ha | rfl | ha)
  · rcases LinearOrder.trichotomy 0 b with (hb | rfl | hb)
    · simp [Preorder.le_of_lt ha, Preorder.le_of_lt hb, mul_nonneg]
    · simp [Semiring.mul_zero, le_refl, le_total]
    · have m : a * b < 0 := mul_neg_of_pos_of_neg ha hb
      simp [Preorder.le_of_lt ha, Preorder.le_of_lt hb, Preorder.not_ge_of_lt m,
        Preorder.not_ge_of_lt ha, Preorder.not_ge_of_lt hb]
  · simp [Semiring.zero_mul, le_refl, le_total]
  · rcases LinearOrder.trichotomy 0 b with (hb | rfl | hb)
    · have m : a * b < 0 := mul_neg_of_neg_of_pos ha hb
      simp [Preorder.le_of_lt ha, Preorder.le_of_lt hb, Preorder.not_ge_of_lt m,
        Preorder.not_ge_of_lt ha, Preorder.not_ge_of_lt hb]
    · simp [Semiring.mul_zero, le_refl, le_total]
    · simp [Preorder.le_of_lt ha, Preorder.le_of_lt hb, mul_nonneg_of_nonpos_of_nonpos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `350cbc6d49b24051540cf5d302d0b3db629d8b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
