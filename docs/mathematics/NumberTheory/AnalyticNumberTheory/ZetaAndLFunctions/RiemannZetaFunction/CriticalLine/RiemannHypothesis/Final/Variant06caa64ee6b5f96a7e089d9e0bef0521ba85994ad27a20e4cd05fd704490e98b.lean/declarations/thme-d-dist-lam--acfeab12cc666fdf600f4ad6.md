# thmE_D_dist_lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:502a5ffa-d413-fa28-f87d-b7e2069c518d",
  "kind": "theorem",
  "lexical_name": "thmE_D_dist_lam",
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
  "slug": "thme-d-dist-lam--acfeab12cc666fdf600f4ad6",
  "source": {
    "blob": "724a9d3c397ac1eac695136b52d4258f7652b525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acfeab12cc666fdf600f4ad6acd96b062ec4276326ade9d45ca8888d5798f22b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:502a5ffa-d413-fa28-f87d-b7e2069c518d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_D_dist_lam (hq : 1 < q) (hprim : χ.IsPrimitive) {lam : ℝ} (h0 : 0 < lam)
    (h1 : lam < 1) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (cStar lam - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) := by
  have hP := paramsOf_valid taperProfile_stdProfile h0 h1.le
  simpa [paramsOf] using (thmDChi_lam_abstract (LZeros (LSeam_of hq hprim)) (parity χ) (by omega) (coeff χ)
    (coeffUnimodular_of_primitive hq hprim) (paperInputsChi_L hq hprim) (paramsOf stdProfile lam)
    hP h1).2.2

/-- **[thm:E] "Theorem D holds likewise", first constant, NO hypotheses**: for every primitive
Dirichlet character χ mod q > 1, for every ε > 0 and all large T, at least
(2 − 1/c₁* − ε)·N_χ(T,2T) of the zeros of Mathlib's 'DirichletCharacter.LFunction χ' with
ordinate in (T,2T], counted with multiplicity, are matched by DISTINCT critical-line zeros
(2 − 1/c₁* = HD 1 = 3/2 − cot(1/√2)/√2 = 0.6725…). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724a9d3c397ac1eac695136b52d4258f7652b525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
