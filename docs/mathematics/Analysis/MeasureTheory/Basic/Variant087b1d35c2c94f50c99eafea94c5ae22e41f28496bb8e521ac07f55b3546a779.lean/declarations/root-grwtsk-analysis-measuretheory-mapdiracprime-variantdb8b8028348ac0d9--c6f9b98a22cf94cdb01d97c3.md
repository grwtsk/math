# _root_.GRWTSK.Analysis.MeasureTheory.MapDiracPrime.Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.MeasureTheory.ext_iff_measureReal_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b230e23-faa1-2b84-e1c3-ea1a1ac748b7",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MapDiracPrime.Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.MeasureTheory.ext_iff_measureReal_singleton",
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
  "slug": "root-grwtsk-analysis-measuretheory-mapdiracprime-variantdb8b8028348ac0d9--c6f9b98a22cf94cdb01d97c3",
  "source": {
    "blob": "a714226af6c6e77fab6ce61b204e2c489f107d6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f9b98a22cf94cdb01d97c3e5b0a0e57fa50474b6ddf2e6f8e1d3f107b1e8f9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b230e23-faa1-2b84-e1c3-ea1a1ac748b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.MapDiracPrime.Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.MeasureTheory.ext_iff_measureReal_singleton [Countable α]
    {μ1 μ2 : Measure α} [SigmaFinite μ1] [SigmaFinite μ2] :
    μ1 = μ2 ↔ ∀ x, μ1.real {x} = μ2.real {x} := by
  rw [Measure.ext_iff_singleton]
  congr! with x
  rw [measureReal_def, measureReal_def, ENNReal.toReal_eq_toReal_iff]
  simp [measure_singleton_lt_top, ne_of_lt]

alias ⟨_, ext_of_measureReal_singleton⟩ := MeasureTheory.ext_iff_measureReal_singleton

/-- If `f` is a map with countable codomain, then `μ.map f` is a sum of Dirac measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a714226af6c6e77fab6ce61b204e2c489f107d6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
