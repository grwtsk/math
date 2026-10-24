# logSample_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69f0045f0f6e586237a7c44ea72506e2accbcee4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e6a12a7b12e5bf2da58b966335878100d290ffc535880e672078dd33322a05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:041a9f34-3115-13c5-fe7e-00127b99e4e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f147a5b0-63b3-9c42-dc0c-3260cba4898b",
  "kind": "theorem",
  "lexical_name": "logSample_integrableOn",
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
  "slug": "logsample-integrableon--df826c45ea2fb6611cf51001",
  "source": {
    "blob": "69f0045f0f6e586237a7c44ea72506e2accbcee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant48e6a12a7b12e5bf2da58b966335878100d290ffc535880e672078dd33322a05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df826c45ea2fb6611cf510014f847b2d60ba68b40720298ccc4ecb6b20583631",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant48e6a12a7b12e5bf2da58b966335878100d290ffc535880e672078dd33322a05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f147a5b0-63b3-9c42-dc0c-3260cba4898b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSample_integrableOn (t : ℝ) : IntegrableOn (logSample t) (Ioi 1) := by
  have hc := translated_compact v (normalizedTest_hasCompactSupport 1 (by norm_num)) t
  have hi : Integrable (fun r : ℝ => Real.exp (r / 2) * v (t - 1 - r)) :=
    ((continuous_id.div_const 2).rexp.mul
      (v_cont.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport hc.mul_left
  have hs : IntegrableOn (fun r : ℝ => Real.exp r * logSample t (Real.exp r)) (Ioi 0) := by
    simpa only [logSample_exp] using hi.integrableOn (s := Ioi 0)
  simpa only [smul_eq_mul, Real.exp_zero] using
    (integrableOn_comp_exp_Ioi (logSample t) 0).mp hs

/-- The derivative change of variables is a decaying exponential times the exact profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant48e6a12a7b12e5bf2da58b966335878100d290ffc535880e672078dd33322a05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant48e6a12a7b12e5bf2da58b966335878100d290ffc535880e672078dd33322a05.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f0045f0f6e586237a7c44ea72506e2accbcee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
