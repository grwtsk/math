# actual_occurrence_tail_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8661cca-da0a-d00c-910a-424baeba36ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d2fc966-c08f-fad9-dd48-24ab33c31646",
  "kind": "theorem",
  "lexical_name": "actual_occurrence_tail_integral",
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
  "slug": "actual-occurrence-tail-integral--04676d13da83da470e630ff2",
  "source": {
    "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04676d13da83da470e630ff2ffacae58df9d93f15532d3b1aa8c5a95858b4d81",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d2fc966-c08f-fad9-dd48-24ab33c31646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_occurrence_tail_integral
    (o : ZeroOccurrence) (R : ℝ) (hR : 1 ≤ R) (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi R, Complex.exp (-s * A) * expandedSummand A (shiftedValue o)) =
      sourceTailKernel (shiftedValue o) R s := by
  let z := shiftedValue o
  have hz := shiftedValue_strip o
  have hminus : 0 < (s - 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.2]
  have hplus : 0 < (s + 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.1]
  have hs0 : 0 < s.re := by linarith
  have hp := weightedPolynomial_tail_integrable _
    (positivePolynomial_natDegree_le z) R hR _ hminus
  have hn := weightedPolynomial_tail_integrable _
    (positivePolynomial_natDegree_le (-z)) R hR _ hplus
  have hm := weightedPolynomial_tail_integrable _
    (mixedPolynomial_natDegree_le z) R hR _ hs0
  change (∫ A in Ioi R, Complex.exp (-s * A) * expandedSummand A z) =
    sourceTailKernel z R s
  simp_rw [weighted_expandedSummand_eq z s]
  have hpn : IntegrableOn (fun A ↦
      weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
      weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A) (Ioi R) := hp.add hn
  rw [integral_const_mul, integral_sub hpn (hm.const_mul 2),
    integral_add hp hn, integral_const_mul]
  rw [integral_weightedPolynomial_tail _ (positivePolynomial_natDegree_le z) R hR _ hminus,
    integral_weightedPolynomial_tail _ (positivePolynomial_natDegree_le (-z)) R hR _ hplus,
    integral_weightedPolynomial_tail _ (mixedPolynomial_natDegree_le z) R hR _ hs0]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719823ed5c7b9cba9c5cb742edf312d2cb44c8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
