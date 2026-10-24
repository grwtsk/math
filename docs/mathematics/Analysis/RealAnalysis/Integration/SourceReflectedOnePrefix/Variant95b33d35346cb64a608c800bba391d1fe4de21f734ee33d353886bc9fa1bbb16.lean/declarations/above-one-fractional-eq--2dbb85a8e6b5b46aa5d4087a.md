# above_one_fractional_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58a39237e1ae3a43092dc50248b13e75573813db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf0848ef-3533-c4e1-10bc-0a1d465174cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cb7bad8-815e-7476-4fb1-911d95404ff8",
  "kind": "theorem",
  "lexical_name": "above_one_fractional_eq",
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
  "slug": "above-one-fractional-eq--2dbb85a8e6b5b46aa5d4087a",
  "source": {
    "blob": "58a39237e1ae3a43092dc50248b13e75573813db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 353,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dbb85a8e6b5b46aa5d4087a3557c4f33f12dcd39feb3d462b1125dc03984766",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cb7bad8-815e-7476-4fb1-911d95404ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem above_one_fractional_eq (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in (1 : ℝ)..((sourceKernelCutoff A + 1 : ℕ) : ℝ),
      Int.fract u * deriv (reflectedSample A x) u) = fractionalAboveOne A x := by
  have hp : 0 < A := by linarith
  unfold fractionalAboveOne
  apply intervalIntegral.integral_congr_Ioo_of_le
    (by exact_mod_cast Nat.le_add_left 1 (sourceKernelCutoff A))
  intro u hu
  rw [(reflectedSample_hasDerivAt hp x (lt_trans (by norm_num) hu.1)).deriv]
  ring

/-- The actual strict reflected row is minus the prefix plus the signed fractional remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a39237e1ae3a43092dc50248b13e75573813db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
