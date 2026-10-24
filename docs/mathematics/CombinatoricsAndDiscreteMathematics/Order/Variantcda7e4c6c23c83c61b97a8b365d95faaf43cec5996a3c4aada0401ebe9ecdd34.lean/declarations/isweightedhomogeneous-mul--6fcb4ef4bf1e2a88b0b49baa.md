# IsWeightedHomogeneous.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee54d6e9f646397f97af727b3306cefde4c69cfc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9b3ecaf-78ca-3c8a-abc2-9f2408b7e3ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:787cf4bb-030a-6c7c-d662-f2170bd93c4c",
  "kind": "theorem",
  "lexical_name": "IsWeightedHomogeneous.mul",
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
  "slug": "isweightedhomogeneous-mul--6fcb4ef4bf1e2a88b0b49baa",
  "source": {
    "blob": "ee54d6e9f646397f97af727b3306cefde4c69cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 568,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fcb4ef4bf1e2a88b0b49baadc7a1f7691e50bf5f0c2f193f25dfdda347d9282",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:787cf4bb-030a-6c7c-d662-f2170bd93c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsWeightedHomogeneous.mul {f g : MvPowerSeries σ R} {p q : ℕ}
    (hf : f.IsWeightedHomogeneous w p) (hg : g.IsWeightedHomogeneous w q) :
    (f * g).IsWeightedHomogeneous w (p + q) := fun {d} ↦ by
  classical
  rw [not_imp_comm]
  intro hd
  rw [coeff_mul]
  apply Finset.sum_eq_zero
  intro x hx
  rw [Finset.mem_antidiagonal] at hx
  suffices weight w x.1 ≠ p ∨ weight w x.2 ≠ q by
    rcases this with hp | hq
    · rw [hf.coeff_eq_zero hp, zero_mul]
    · rw [hg.coeff_eq_zero hq, mul_zero]
  rw [← not_and_or]
  rintro ⟨hp, hq⟩
  apply hd
  rw [← hx, map_add, hp, hq]

set_option backward.isDefEq.respectTransparency false in
/-- The weighted homogeneous components of an `MvPowerSeries f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee54d6e9f646397f97af727b3306cefde4c69cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
