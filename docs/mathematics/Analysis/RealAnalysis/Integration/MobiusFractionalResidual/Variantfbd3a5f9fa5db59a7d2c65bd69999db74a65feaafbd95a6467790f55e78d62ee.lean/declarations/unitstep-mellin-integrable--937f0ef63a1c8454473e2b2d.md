# unitStep_mellin_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d3f021f-0204-3942-dfb3-fe9930792ccf",
  "kind": "theorem",
  "lexical_name": "unitStep_mellin_integrable",
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
  "slug": "unitstep-mellin-integrable--937f0ef63a1c8454473e2b2d",
  "source": {
    "blob": "1dd4e7deb9b1d8453206434307bf6e1539b5e878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937f0ef63a1c8454473e2b2d0b5d330b480630ed204db8f665d031be2d6796fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d3f021f-0204-3942-dfb3-fe9930792ccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitStep_mellin_integrable (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun x : ℝ => (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) := by
  have hpow : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hp : IntegrableOn (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) (Ici (1 : ℝ)) := by
    rw [integrableOn_Ici_iff_integrableOn_Ioi]
    exact integrableOn_Ioi_cpow_of_lt hpow zero_lt_one
  have hset : Ici (1 : ℝ) ∩ Ioi 0 = Ici (1 : ℝ) := by ext x; simp; grind
  have hi := (integrableOn_indicator_iff (t := Ioi (0 : ℝ)) measurableSet_Ici).mpr
    (hset.symm ▸ hp)
  apply hi.congr
  filter_upwards [] with x
  simp only [Set.indicator, mem_Ici, ite_mul, one_mul, zero_mul]

/-- The unit step contributes the full constant term of the residual transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dd4e7deb9b1d8453206434307bf6e1539b5e878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
