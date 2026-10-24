# integral_logRatioSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10731cfece213c0d8cb948acc1ac690c7f23adbe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd350360-291b-b3be-6bfe-4838ef6a79d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0d879ae-8066-9b28-0111-33be62a43b98",
  "kind": "theorem",
  "lexical_name": "integral_logRatioSquare",
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
  "slug": "integral-logratiosquare--9e281974515fbceaba819ecc",
  "source": {
    "blob": "10731cfece213c0d8cb948acc1ac690c7f23adbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e281974515fbceaba819ecce9098cb760270e057e9e6057567939f20f6c08df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d879ae-8066-9b28-0111-33be62a43b98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_logRatioSquare (x : ℝ) (hx : 0 < x) :
    (∫ t in 0..x, logRatioSquare x t) = 2 * x := by
  have hb : Tendsto (logRatioPrimitive x) (𝓝[<] x) (𝓝 (2 * x)) := by
    have hc : ContinuousAt (logRatioPrimitive x) x := by
      have hn : x ≠ 0 := hx.ne'
      unfold logRatioPrimitive
      fun_prop
    have h := tendsto_nhdsWithin_of_tendsto_nhds hc.tendsto (s := Iio x)
    simpa only [logRatioPrimitive, sub_self, zero_pow (by norm_num : (2 : ℕ) ≠ 0),
      mul_zero, zero_mul, zero_add, mul_comm] using h
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_tendsto hx
    (fun t ht => logRatioPrimitive_hasDerivAt x t hx ht.1)
    (logRatioSquare_intervalIntegrable x hx) (logRatioPrimitive_tendsto_zero x) hb
  simpa only [sub_zero] using h

/-- Monotonicity is asserted only on the positive interval, never at the totalized zero value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10731cfece213c0d8cb948acc1ac690c7f23adbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
