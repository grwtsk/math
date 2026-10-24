# stableCubicModelDensity_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77b85656-8b7a-0d49-f5ef-00ff32d54fa9",
  "kind": "theorem",
  "lexical_name": "stableCubicModelDensity_integral",
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
  "slug": "stablecubicmodeldensity-integral--ab3a7d7298dead52e803c579",
  "source": {
    "blob": "6f6172ae7d5f27640f045432315c1d19d9447097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab3a7d7298dead52e803c57953ab7b5d80429c835705711728e06627caa797b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b85656-8b7a-0d49-f5ef-00ff32d54fa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem stableCubicModelDensity_integral (A t : ℝ) :
    (∫ s in Ioi (0 : ℝ), stableCubicModelDensity A t s) = actualStablePeanoCubicJet A t := by
  have h0 := (exponential_half_integrable 1).const_mul
    (sourceCorrelation explicitSecondDerivative A t)
  have h1 := (exponential_half_integrable 2).const_mul
    (deriv (sourceCorrelation explicitSecondDerivative A) t)
  have h2 := (exponential_half_integrable 3).const_mul
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2)
  have h3 := (exponential_half_integrable 4).const_mul
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t / 6)
  simp_rw [stableCubicModelDensity_eq]
  have hs3 := integral_sub ((h0.sub h1).add h2) h3
  have hs2 := integral_add (h0.sub h1) h2
  have hs1 := integral_sub h0 h1
  simp only [Pi.sub_apply, Pi.add_apply] at hs3 hs2 hs1
  rw [hs3, hs2, hs1]
  simp_rw [integral_const_mul, exponential_half_integral]
  unfold actualStablePeanoCubicJet
  norm_num
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6172ae7d5f27640f045432315c1d19d9447097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
