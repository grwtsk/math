# xi_conjugation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:982af8bf-57f9-74e8-4ac1-d9b0d868d8a8",
  "kind": "theorem",
  "lexical_name": "xi_conjugation",
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
  "slug": "xi-conjugation--924e16caedc821c6762e1876",
  "source": {
    "blob": "0d7cb90e39bee6ac95fe491d06c5d721344042bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:924e16caedc821c6762e187652edda21718d07dc27149a83f6d52b3c0bcf5500",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:982af8bf-57f9-74e8-4ac1-d9b0d868d8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_conjugation (s : ℂ) : xi (conj s) = conj (xi s) := by
  have hf : AnalyticOnNhd ℂ xi univ :=
    differentiable_xi.differentiableOn.analyticOnNhd isOpen_univ
  have hg : AnalyticOnNhd ℂ (fun z => conj (xi (conj z))) univ := by
    apply DifferentiableOn.analyticOnNhd _ isOpen_univ
    intro z _hz
    exact (differentiableAt_conj_conj_iff.mpr
      (differentiable_xi (conj z))).differentiableWithinAt
  have hright (z : ℂ) (hz : 1 < z.re) : conj (xi (conj z)) = xi z := by
    rw [xi_product_on_right (conj z) (by simpa using hz), xi_product_on_right z hz]
    simp [riemannZeta_conj, gammaReal_conjugation, Complex.conj_ofNat]
  have heq : EqOn (fun z => conj (xi (conj z))) xi univ :=
    hg.eqOn_of_preconnected_of_eventuallyEq hf isPreconnected_univ
      (mem_univ (2 : ℂ))
      (eventuallyEq_of_mem
        ((isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)) hright)
  simpa using congrArg (starRingEnd ℂ) (heq (mem_univ s))

/-- Iterated derivatives commute with conjugating both the input and output. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7cb90e39bee6ac95fe491d06c5d721344042bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
