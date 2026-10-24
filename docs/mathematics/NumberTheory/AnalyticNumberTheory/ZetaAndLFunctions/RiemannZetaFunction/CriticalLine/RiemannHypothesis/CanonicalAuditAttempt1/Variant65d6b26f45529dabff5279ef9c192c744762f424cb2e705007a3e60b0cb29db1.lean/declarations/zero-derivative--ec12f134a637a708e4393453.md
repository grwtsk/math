# zero_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc5ca625a14e4dd19b55920d450c40f1dee17c0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65d6b26f45529dabff5279ef9c192c744762f424cb2e705007a3e60b0cb29db1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5df10f4-406a-5407-3727-fc9ead024797",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03c7bd67-5dcf-6fa1-913c-37fda727ae7d",
  "kind": "theorem",
  "lexical_name": "zero_derivative",
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
  "slug": "zero-derivative--ec12f134a637a708e4393453",
  "source": {
    "blob": "dc5ca625a14e4dd19b55920d450c40f1dee17c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAuditAttempt1/Variant65d6b26f45529dabff5279ef9c192c744762f424cb2e705007a3e60b0cb29db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec12f134a637a708e439345398834df8d2c82a6f95494c861c531199bfdb1bfc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAuditAttempt1/Variant65d6b26f45529dabff5279ef9c192c744762f424cb2e705007a3e60b0cb29db1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03c7bd67-5dcf-6fa1-913c-37fda727ae7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem zero_derivative {A : ℝ} (hA : 0 < A) :
    deriv (primitiveCorrelationZero A) 0 = 0 := by
  have heven : Function.Even (primitiveCorrelationZero A) := by
    intro t
    unfold primitiveCorrelationZero
    have h := integral_sub_right_eq_self (μ := volume)
      (fun x => normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x - -t)) t
    simpa only [sub_neg_eq_add, sub_add_cancel, mul_comm] using h.symm
  have hc := ((primitiveCorrelationZero_contDiff_two hA).differentiable (by norm_num) 0).hasDerivAt
  have hn : HasDerivAt (fun t => primitiveCorrelationZero A (-t))
      (-deriv (primitiveCorrelationZero A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hc.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun t => primitiveCorrelationZero A (-t)) = primitiveCorrelationZero A :=
    funext heven
  rw [he] at hn
  have hu := hc.unique hn
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAuditAttempt1/Variant65d6b26f45529dabff5279ef9c192c744762f424cb2e705007a3e60b0cb29db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAuditAttempt1/Variant65d6b26f45529dabff5279ef9c192c744762f424cb2e705007a3e60b0cb29db1.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc5ca625a14e4dd19b55920d450c40f1dee17c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
