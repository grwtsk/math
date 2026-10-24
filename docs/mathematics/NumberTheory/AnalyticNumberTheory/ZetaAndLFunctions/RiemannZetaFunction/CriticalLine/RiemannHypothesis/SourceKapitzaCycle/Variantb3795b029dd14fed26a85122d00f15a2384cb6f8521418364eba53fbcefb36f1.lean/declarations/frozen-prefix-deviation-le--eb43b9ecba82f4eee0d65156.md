# frozen_prefix_deviation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:564b21e9-6563-8d85-9295-a18b6473b8c5",
  "kind": "theorem",
  "lexical_name": "frozen_prefix_deviation_le",
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
  "slug": "frozen-prefix-deviation-le--eb43b9ecba82f4eee0d65156",
  "source": {
    "blob": "dc1e829a51d00ddb746e615321ed6e08cfb559bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variantb3795b029dd14fed26a85122d00f15a2384cb6f8521418364eba53fbcefb36f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb43b9ecba82f4eee0d65156699c549fe0507fceb2ffa9e3297b768acac05eb6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variantb3795b029dd14fed26a85122d00f15a2384cb6f8521418364eba53fbcefb36f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:564b21e9-6563-8d85-9295-a18b6473b8c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frozen_prefix_deviation_le (q ell b t : ℝ) (hq : 0 ≤ q) (ht : 0 ≤ t) :
    |(Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell)| ≤
      (q + |b|) * t := by
  have hexp : Real.exp (-t) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hexp_lower := Real.add_one_le_exp (-t)
  have hfactor : |Real.exp (-t) - 1| ≤ t := by
    rw [abs_of_nonpos (by linarith : Real.exp (-t) - 1 ≤ 0)]
    linarith
  have hfirst := mul_le_mul_of_nonneg_right hfactor hq
  have he : (Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell) =
      (Real.exp (-t) - 1) * q + b * t := by ring
  rw [he]
  calc
    |(Real.exp (-t) - 1) * q + b * t| ≤
        |(Real.exp (-t) - 1) * q| + |b * t| := abs_add_le _ _
    _ ≤ t * q + |b| * t := by
      rw [abs_mul, abs_mul, abs_of_nonneg hq, abs_of_nonneg ht]
      exact add_le_add hfirst le_rfl
    _ = (q + |b|) * t := by ring

/-- The exact integrated cell weight pays a quadratic microscopic error.
No signed estimate is imposed on the frozen nodal readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variantb3795b029dd14fed26a85122d00f15a2384cb6f8521418364eba53fbcefb36f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variantb3795b029dd14fed26a85122d00f15a2384cb6f8521418364eba53fbcefb36f1.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1e829a51d00ddb746e615321ed6e08cfb559bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
