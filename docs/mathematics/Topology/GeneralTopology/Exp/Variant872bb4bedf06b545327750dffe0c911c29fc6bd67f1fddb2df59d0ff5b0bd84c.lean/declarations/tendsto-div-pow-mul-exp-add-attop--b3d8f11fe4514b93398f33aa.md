# tendsto_div_pow_mul_exp_add_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97aa22cce9a0173e19aa13b00bb213f5a48ebef8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3d87875-f971-acd7-a584-cce5d6fe3177",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69dd298b-043c-4691-5f27-438f9bc5b0d4",
  "kind": "theorem",
  "lexical_name": "tendsto_div_pow_mul_exp_add_atTop",
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
  "slug": "tendsto-div-pow-mul-exp-add-attop--b3d8f11fe4514b93398f33aa",
  "source": {
    "blob": "97aa22cce9a0173e19aa13b00bb213f5a48ebef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d8f11fe4514b93398f33aa4d1d81508fac2744c3f94c0db167f0925b3b702b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69dd298b-043c-4691-5f27-438f9bc5b0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_div_pow_mul_exp_add_atTop (b c : ℝ) (n : ℕ) (hb : 0 ≠ b) :
    Tendsto (fun x => x ^ n / (b * exp x + c)) atTop (𝓝 0) := by
  have H : ∀ d e, 0 < d → Tendsto (fun x : ℝ => x ^ n / (d * exp x + e)) atTop (𝓝 0) := by
    intro b' c' h
    convert! (tendsto_mul_exp_add_div_pow_atTop b' c' n h).inv_tendsto_atTop using 1
    ext x
    simp
  rcases lt_or_gt_of_ne hb with h | h
  · exact H b c h
  · convert! (H (-b) (-c) (neg_pos.mpr h)).neg using 1
    · ext x
      field_simp
      rw [← neg_add (b * exp x) c, div_neg, neg_neg]
    · rw [neg_zero]

/-- `Real.exp` as an order isomorphism between `ℝ` and `(0, +∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97aa22cce9a0173e19aa13b00bb213f5a48ebef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
