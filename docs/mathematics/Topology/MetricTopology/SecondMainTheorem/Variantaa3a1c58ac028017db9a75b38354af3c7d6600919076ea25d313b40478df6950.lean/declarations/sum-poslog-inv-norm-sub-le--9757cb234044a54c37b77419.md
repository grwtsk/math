# sum_posLog_inv_norm_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da9c21120fc08f2d80d5c9206fb95f3ee07b700e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa3a1c58ac028017db9a75b38354af3c7d6600919076ea25d313b40478df6950.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:debd95b2-6e82-c34f-eae2-e3adc4cfc2ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e8e8135-33a4-1a56-7848-78e6466e923d",
  "kind": "lemma",
  "lexical_name": "sum_posLog_inv_norm_sub_le",
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
  "slug": "sum-poslog-inv-norm-sub-le--9757cb234044a54c37b77419",
  "source": {
    "blob": "da9c21120fc08f2d80d5c9206fb95f3ee07b700e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/Topology/MetricTopology/SecondMainTheorem/Variantaa3a1c58ac028017db9a75b38354af3c7d6600919076ea25d313b40478df6950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9757cb234044a54c37b77419824f314aaa8b7a0face99f21bd19a603677136b5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SecondMainTheorem/Variantaa3a1c58ac028017db9a75b38354af3c7d6600919076ea25d313b40478df6950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e8e8135-33a4-1a56-7848-78e6466e923d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sum_posLog_inv_norm_sub_le {s : Finset 𝕜} {w : 𝕜} {c : ℝ} (hc : 0 < c)
    (h : ∀ a ∈ s, c ≤ ‖w - a‖) :
    ∑ a ∈ s, log⁺ ‖w - a‖⁻¹ ≤ #s * log⁺ c⁻¹ := by
  calc ∑ a ∈ s, log⁺ ‖w - a‖⁻¹
      ≤ ∑ a ∈ s, log⁺ c⁻¹ := by
        refine sum_le_sum fun a ha ↦
          posLog_le_posLog (le_trans (by norm_num) (by positivity : (0:ℝ) ≤ ‖w - a‖⁻¹)) ?_
        gcongr
        exact h a ha
    _ = #s * log⁺ c⁻¹ := by rw [sum_const, nsmul_eq_mul]

/--
**Separation lemma**: for a finite set `s` of points, closeness to one point of `s`, measured by
`∑ a ∈ s, log⁺ ‖· - a‖⁻¹`, is detected by the single function `log⁺ ‖∑ a ∈ s, (· - a)⁻¹‖`, up to a
constant depending only on `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SecondMainTheorem/Variantaa3a1c58ac028017db9a75b38354af3c7d6600919076ea25d313b40478df6950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SecondMainTheorem/Variantaa3a1c58ac028017db9a75b38354af3c7d6600919076ea25d313b40478df6950.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9c21120fc08f2d80d5c9206fb95f3ee07b700e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
