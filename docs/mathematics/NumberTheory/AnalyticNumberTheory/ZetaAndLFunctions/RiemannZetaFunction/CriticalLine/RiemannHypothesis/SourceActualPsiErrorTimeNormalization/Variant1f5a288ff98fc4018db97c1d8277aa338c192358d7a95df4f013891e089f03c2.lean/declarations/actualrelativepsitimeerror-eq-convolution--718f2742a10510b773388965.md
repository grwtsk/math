# actualRelativePsiTimeError_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85bb7952-8e93-22af-7763-42b470fc0e62",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_eq_convolution",
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
  "slug": "actualrelativepsitimeerror-eq-convolution--718f2742a10510b773388965",
  "source": {
    "blob": "14107ddf40ab1d4bae6192e9e7e4a052796680d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant1f5a288ff98fc4018db97c1d8277aa338c192358d7a95df4f013891e089f03c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:718f2742a10510b7733889658eeb58227219f8f67e268ca4e23a673abe05515f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant1f5a288ff98fc4018db97c1d8277aa338c192358d7a95df4f013891e089f03c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85bb7952-8e93-22af-7763-42b470fc0e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_eq_convolution {t : ℝ} (ht : 0 ≤ t) :
    actualRelativePsiTimeError t = actualCenteredMangoldtLogError t -
      actualMangoldtErrorConvolution 1 t -
        (Real.eulerMascheroniConstant + 1) * Real.exp (-t) := by
  have h := actualNormalizedMangoldtExpReadout_eq_convolution (lam := 1)
    (by norm_num) ht
  rw [actualNormalizedMangoldtExpReadout_one ht] at h
  simp only [div_one, one_mul, neg_mul] at h
  unfold actualRelativePsiTimeError
  linarith

/-- Genuine finite L1 of the actual relative error follows before any asymptotics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant1f5a288ff98fc4018db97c1d8277aa338c192358d7a95df4f013891e089f03c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant1f5a288ff98fc4018db97c1d8277aa338c192358d7a95df4f013891e089f03c2.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14107ddf40ab1d4bae6192e9e7e4a052796680d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
