# logRatioSquare_le_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4bdc9478a4ee05bec154b306f8a06b1ba7bd73e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:498cf17b-3f0f-6668-c2fd-9fb3a6a7f888",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cffe43e9-8e1d-1da5-50c7-758137d86835",
  "kind": "theorem",
  "lexical_name": "logRatioSquare_le_rpow",
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
  "slug": "logratiosquare-le-rpow--ed019857aad9c76704fbecfc",
  "source": {
    "blob": "b4bdc9478a4ee05bec154b306f8a06b1ba7bd73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed019857aad9c76704fbecfcae1711495da381fc2236f3fc9d3274229ea7953f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cffe43e9-8e1d-1da5-50c7-758137d86835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logRatioSquare_le_rpow (x t : ℝ) (hx : 0 < x) (ht : t ∈ Ioc 0 x) :
    logRatioSquare x t ≤ (16 * x ^ (1 / 2 : ℝ)) * t ^ (-(1 / 2 : ℝ)) := by
  have hratio : 1 ≤ x / t := (le_div_iff₀ ht.1).mpr (by simpa using ht.2)
  have hlog := Real.log_le_rpow_div (div_nonneg hx.le ht.1.le)
    (by norm_num : (0 : ℝ) < 1 / 4)
  unfold logRatioSquare
  calc
    _ ≤ ((x / t) ^ (1 / 4 : ℝ) / (1 / 4 : ℝ)) ^ 2 :=
      pow_le_pow_left₀ (Real.log_nonneg hratio) hlog 2
    _ = 16 * (x / t) ^ (1 / 2 : ℝ) := by
      rw [div_pow, ← Real.rpow_natCast, ← Real.rpow_mul (div_nonneg hx.le ht.1.le)]
      norm_num
      ring
    _ = _ := by
      rw [Real.div_rpow hx.le ht.1.le, Real.rpow_neg ht.1.le]
      ring

/-- Integrability at zero is proved before evaluating the improper-endpoint integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bdc9478a4ee05bec154b306f8a06b1ba7bd73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
