# vertical_fold_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a876a74-28a2-3adc-0494-0b8e8aa76529",
  "kind": "lemma",
  "lexical_name": "vertical_fold_of",
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
  "slug": "vertical-fold-of--a02e9bf0ae7a327b85e9872f",
  "source": {
    "blob": "9ae7962b5b8c5af66e2f026f89c417c6d6331fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a02e9bf0ae7a327b85e9872fbc12dd33219315b149961b6d12587334e2820085",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a876a74-28a2-3adc-0494-0b8e8aa76529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vertical_fold_of (hfold : ∀ t ∈ uIcc T₁ T₂, F (1 - conj ((2 : ℂ) + t * I)) = -conj (F ((2 : ℂ) + t * I))) :
    ∫ t in T₁..T₂, F (-1 + t * I) = -starRingEnd ℂ (∫ t in T₁..T₂, F (2 + t * I)) := by
  rw [← intervalIntegral_conj, ← intervalIntegral.integral_neg]
  apply intervalIntegral.integral_congr
  intro t ht
  have e : (1 : ℂ) - starRingEnd ℂ (2 + t * I) = -1 + t * I := by simp [Complex.ext_iff]; norm_num
  show F (-1 + t * I) = -starRingEnd ℂ (F (2 + t * I))
  rw [← e, hfold t ht]

/-- **(A) the fold**: ∮_{∂([−1,2]×[T₁,T₂])} F = 2i·Im(halfContour F T₁ T₂). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae7962b5b8c5af66e2f026f89c417c6d6331fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
