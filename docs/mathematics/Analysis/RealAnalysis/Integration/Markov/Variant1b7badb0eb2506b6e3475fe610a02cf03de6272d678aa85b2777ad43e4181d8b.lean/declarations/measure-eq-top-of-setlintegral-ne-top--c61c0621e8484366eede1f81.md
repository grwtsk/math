# measure_eq_top_of_setLIntegral_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62ec20e6-80fa-cc8b-174e-a3a83183ccaa",
  "kind": "theorem",
  "lexical_name": "measure_eq_top_of_setLIntegral_ne_top",
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
  "slug": "measure-eq-top-of-setlintegral-ne-top--c61c0621e8484366eede1f81",
  "source": {
    "blob": "edd595cc9784f11733e884c4f969fd0eba5bebf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c61c0621e8484366eede1f8139f6d30c8b935109b087a0b776ba838e546b42ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ec20e6-80fa-cc8b-174e-a3a83183ccaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_top_of_setLIntegral_ne_top {f : α → ℝ≥0∞} {s : Set α}
    (hf : AEMeasurable f (μ.restrict s)) (hμf : ∫⁻ x in s, f x ∂μ ≠ ∞) :
    μ ({x ∈ s | f x = ∞}) = 0 :=
  of_not_not fun h => hμf <| setLIntegral_eq_top_of_measure_eq_top_ne_zero hf h

@[deprecated (since := "2025-04-22")]
alias measure_eq_top_of_setLintegral_ne_top := measure_eq_top_of_setLIntegral_ne_top

/-- **Markov's inequality**, also known as **Chebyshev's first inequality**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edd595cc9784f11733e884c4f969fd0eba5bebf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
