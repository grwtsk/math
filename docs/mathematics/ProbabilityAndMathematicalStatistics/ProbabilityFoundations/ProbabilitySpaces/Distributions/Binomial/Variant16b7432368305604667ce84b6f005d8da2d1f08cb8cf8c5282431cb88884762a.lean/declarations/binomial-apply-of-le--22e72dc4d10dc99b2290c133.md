# binomial_apply_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5eb6e98e572e5b61a162353d866faa7d4f4eab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37942cff-e1da-326b-69f1-724a5880835a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecdd5b84-9d08-1b8b-f03e-206045e7c737",
  "kind": "theorem",
  "lexical_name": "binomial_apply_of_le",
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
  "slug": "binomial-apply-of-le--22e72dc4d10dc99b2290c133",
  "source": {
    "blob": "f5eb6e98e572e5b61a162353d866faa7d4f4eab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22e72dc4d10dc99b2290c1334b359b6acc21a2a7abe05e7f05e4447af74ccd59",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecdd5b84-9d08-1b8b-f03e-206045e7c737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binomial_apply_of_le {k b : ℕ} (hb : k ≤ b) {x : ℝ≥0} (h : x ≤ 1) :
    ENNReal.ofReal ((b.choose k) * x ^ k * (1 - x) ^ (b - k))
    = PMF.binomial x h b (Fin.ofNat (b + 1) k) := by
  have eq0 : k % (b + 1) = k := by simpa using Order.lt_add_one_iff.mpr hb
  have eq1 : 1 - (x : ℝ≥0∞) = ENNReal.ofReal (1 - x : ℝ) := by norm_cast
  have : (1 - (x : ℝ)) ≥ 0 := by simpa
  rwa [Fin.ofNat_eq_cast, PMF.binomial_apply, Fin.val_natCast, Fin.val_last, eq0, eq1,
    coe_nnreal_eq x, mul_rotate, ofReal_mul, ofReal_mul, ofReal_pow, ofReal_pow, ofReal_natCast]
  all_goals positivity

end PMF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5eb6e98e572e5b61a162353d866faa7d4f4eab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
