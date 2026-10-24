# hasDerivAt_log_riemannZeta_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bd624e7-170a-0ad2-fa9d-06bb8c8eab63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff61a99e-9a41-74d5-0f7a-9cffd711ce24",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_log_riemannZeta_two",
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
  "slug": "hasderivat-log-riemannzeta-two--1a39e84c344a7035ffb926c7",
  "source": {
    "blob": "824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 362,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a39e84c344a7035ffb926c722c9a146abdbb6a9d2f231c9101de2f42da7f33a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff61a99e-9a41-74d5-0f7a-9cffd711ce24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_log_riemannZeta_two (t : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.log (riemannZeta (2 + t * I)))
      (logDeriv riemannZeta (2 + t * I) * I) t := by
  have hs := two_add_mul_I_ne_one t
  have hζ : HasDerivAt riemannZeta (deriv riemannZeta (2 + t * I)) (2 + t * I) :=
    (differentiableAt_riemannZeta hs).hasDerivAt
  have hγ : HasDerivAt (fun t : ℝ => (2 : ℂ) + t * I) I t := by
    have h1 : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 t := Complex.ofRealCLM.hasDerivAt
    simpa using (h1.mul_const I).const_add (2 : ℂ)
  have hcomp : HasDerivAt (fun t : ℝ => riemannZeta (2 + t * I)) (deriv riemannZeta (2 + t * I) * I) t :=
    hζ.comp t hγ
  have hlog : HasDerivAt Complex.log (riemannZeta (2 + t * I))⁻¹ (riemannZeta (2 + t * I)) :=
    Complex.hasDerivAt_log (Or.inl (re_riemannZeta_two_pos t))
  have h := hlog.comp t hcomp
  have e : (riemannZeta (2 + t * I))⁻¹ * (deriv riemannZeta (2 + t * I) * I)
      = logDeriv riemannZeta (2 + t * I) * I := by
    rw [logDeriv_apply]; ring
  rw [e] at h
  exact h

/-- Continuity of `t ↦ ζ'/ζ(2+it)·i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
