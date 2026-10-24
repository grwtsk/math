# vertical_foldChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "593eaa2bea3a05cdd7384cc7689a231513b63e82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eff97b52-f9ef-8890-917e-58d119ef1aa0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18392460-8f8f-9b24-8556-6135faf99663",
  "kind": "lemma",
  "lexical_name": "vertical_foldChi",
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
  "slug": "vertical-foldchi--5e89baf25cddb58b731ad8ec",
  "source": {
    "blob": "593eaa2bea3a05cdd7384cc7689a231513b63e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e89baf25cddb58b731ad8eca8d1532d2db50aa81df93c42aee939a8cf0dc6e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18392460-8f8f-9b24-8556-6135faf99663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vertical_foldChi (hq : 1 < q) (hprim : χ.IsPrimitive) (T₁ T₂ : ℝ) :
    ∫ t in T₁..T₂, logDeriv (completedLSym χ) (-1 + t * I)
      = -conj (∫ t in T₁..T₂, logDeriv (completedLSym χ) (2 + t * I)) := by
  rw [← intervalIntegral_conj, ← intervalIntegral.integral_neg]
  apply intervalIntegral.integral_congr
  intro t _
  have key := logDeriv_completedLSym_one_sub_conj hq hprim (2 + t * I)
  have e : (1 : ℂ) - conj ((2 : ℂ) + t * I) = -1 + t * I := by
    simp [Complex.ext_iff]; norm_num
  show logDeriv (completedLSym χ) (-1 + t * I) = -conj (logDeriv (completedLSym χ) (2 + t * I))
  rw [← e, key]

/-- **The fold** for Λ_sym(s,χ): for good heights T₁ ≤ T₂ (any sign),
∮_{∂([−1,2]×[T₁,T₂])} Λ_sym'/Λ_sym = 2i·Im(halfContour (Λ_sym'/Λ_sym) T₁ T₂). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593eaa2bea3a05cdd7384cc7689a231513b63e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
