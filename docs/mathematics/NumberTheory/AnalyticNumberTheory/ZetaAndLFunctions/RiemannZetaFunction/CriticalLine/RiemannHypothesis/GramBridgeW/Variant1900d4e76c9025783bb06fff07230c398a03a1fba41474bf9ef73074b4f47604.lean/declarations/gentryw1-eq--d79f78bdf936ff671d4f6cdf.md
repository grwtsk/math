# GentryW1_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad4155c89a793180a9154d0a3735ec021b6b0932",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c372fbb-39ae-9613-bb1b-de2a3f9ca28a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3071c79-0951-ea56-50c5-3da7d887608d",
  "kind": "theorem",
  "lexical_name": "GentryW1_eq",
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
  "slug": "gentryw1-eq--d79f78bdf936ff671d4f6cdf",
  "source": {
    "blob": "ad4155c89a793180a9154d0a3735ec021b6b0932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d79f78bdf936ff671d4f6cdfafad7ae514aa2d4dc8e0627a9f6b57133bf0a8cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3071c79-0951-ea56-50c5-3da7d887608d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GentryW1_eq (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T)
    (k l : Fin (P.d T)) (cJ : ℕ → ℂ)
    (hnuc : ∀ τ : ℝ, nucW 2 (P.X T) (xiCoeff (((L2star (P.tauStar T k l)) : ℝ) : ℂ)) τ
      = nucW 2 (P.X T) (fun N => -((Λ N : ℝ) : ℂ)) τ + Pc (P.X T) cJ τ)
    (hint : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ))) :
    (((P.GentryW1 T k l : ℝ)) : ℂ)
      = literatureRHSW (kfun P T k l) + ∫ τ : ℝ, paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ) := by
  have hW : ∀ τ : ℝ, ((P.phiHatR T (τ - P.tau T k) : ℝ) : ℂ) * ((P.phiHatR T (τ - P.tau T l) : ℝ) : ℂ)
      = paperFT (kfun P T k l) τ := fun τ => by
    rw [← Complex.ofReal_mul, paperFT_pairTest_ofReal P T hφC2 hφsupp k l τ]
  have hmain := integrable_paperFT_pairTest_mul_nucW2 P T hφC2 hφsupp hL k l
  rw [literatureRHSW_eq_integral_nucW P T hφC2 hφsupp hL]
  unfold Params.GentryW1 Params.GentryCW
  rw [← integral_complex_ofReal]
  have h1 : ∀ τ : ℝ,
      ((P.phiHatR T (τ - P.tau T k) * P.phiHatR T (τ - P.tau T l)
          * nucW 2 (P.X T) (xiCoeff (((L2star (P.tauStar T k l)) : ℝ) : ℂ)) τ : ℝ) : ℂ)
        = paperFT (kfun P T k l) τ * ((nucW 2 (P.X T) (fun N => -((Λ N : ℝ) : ℂ)) τ : ℝ) : ℂ)
          + paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ) := by
    intro τ
    rw [hnuc τ]; push_cast; rw [hW τ]; ring
  simp_rw [h1]
  rw [integral_add hmain hint]

end Pair

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad4155c89a793180a9154d0a3735ec021b6b0932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
