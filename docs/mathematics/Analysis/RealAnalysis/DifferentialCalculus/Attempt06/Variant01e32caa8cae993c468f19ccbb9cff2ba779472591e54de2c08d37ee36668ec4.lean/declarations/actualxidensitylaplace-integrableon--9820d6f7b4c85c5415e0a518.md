# actualXiDensityLaplace_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f457829-c69b-543f-8330-bcacb5d2812d",
  "kind": "theorem",
  "lexical_name": "actualXiDensityLaplace_integrableOn",
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
  "slug": "actualxidensitylaplace-integrableon--9820d6f7b4c85c5415e0a518",
  "source": {
    "blob": "e5b88bedd390aad82c2902941db0a9d1569ec7a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant01e32caa8cae993c468f19ccbb9cff2ba779472591e54de2c08d37ee36668ec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9820d6f7b4c85c5415e0a51820f263821e353093e4c8f5faa332b3fbb99bbce5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant01e32caa8cae993c468f19ccbb9cff2ba779472591e54de2c08d37ee36668ec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f457829-c69b-543f-8330-bcacb5d2812d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiDensityLaplace_integrableOn {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualXiTailTimeDensity t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
  have hs : 1 < (z + 1 / 2).re := by norm_num; linarith
  have hi := (integrableOn_comp_exp_Ioi (fun y : ℝ => (shiftedActualChebyshev y : ℂ) *
    (y : ℂ) ^ (-((z + 1 / 2) + 1))) (Real.log 7)).mpr
      (by simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using
        (actualXiComplexMellinTailSeven_integrableOn hs))
  simp_rw [exponential_density_transport z] at hi
  exact hi

/-- Genuine finite Abel uses the actual AE derivative and its zero lower anchor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant01e32caa8cae993c468f19ccbb9cff2ba779472591e54de2c08d37ee36668ec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant01e32caa8cae993c468f19ccbb9cff2ba779472591e54de2c08d37ee36668ec4.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b88bedd390aad82c2902941db0a9d1569ec7a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
