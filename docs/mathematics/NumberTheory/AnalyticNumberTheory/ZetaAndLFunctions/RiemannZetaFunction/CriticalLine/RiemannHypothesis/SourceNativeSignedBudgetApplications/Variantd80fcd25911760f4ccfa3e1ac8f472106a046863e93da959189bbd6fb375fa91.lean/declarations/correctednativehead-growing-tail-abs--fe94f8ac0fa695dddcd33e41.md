# correctedNativeHead_growing_tail_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e483d151-06a9-a1ff-f521-fbee87e0c163",
  "kind": "theorem",
  "lexical_name": "correctedNativeHead_growing_tail_abs",
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
  "slug": "correctednativehead-growing-tail-abs--fe94f8ac0fa695dddcd33e41",
  "source": {
    "blob": "bfc84463aea1406b10c04628279b0ee8f78553ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantd80fcd25911760f4ccfa3e1ac8f472106a046863e93da959189bbd6fb375fa91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe94f8ac0fa695dddcd33e4183319650269d5a33ca0e91c14c2948723b71074f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantd80fcd25911760f4ccfa3e1ac8f472106a046863e93da959189bbd6fb375fa91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e483d151-06a9-a1ff-f521-fbee87e0c163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNativeHead_growing_tail_abs (A : ℝ) (hA : 1 ≤ A) :
    |(mertensResidual A - rightLineMajorant 2) -
      (correctedNativeHead A (growingHeight A)).re| ≤ twoLineTailConstant / A ^ 9 := by
  have h := (Complex.abs_re_le_norm
    (((mertensResidual A : ℂ) - (rightLineMajorant 2 : ℂ)) -
      correctedNativeHead A (growingHeight A))).trans
    (correctedNativeHead_growing_tail_norm A hA)
  simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantd80fcd25911760f4ccfa3e1ac8f472106a046863e93da959189bbd6fb375fa91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantd80fcd25911760f4ccfa3e1ac8f472106a046863e93da959189bbd6fb375fa91.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc84463aea1406b10c04628279b0ee8f78553ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
