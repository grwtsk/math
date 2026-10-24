# source_cellTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e7df483-06a1-068e-45a8-25790f3d08dc",
  "kind": "theorem",
  "lexical_name": "source_cellTransfer",
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
  "slug": "source-celltransfer--f6c8c9f0b98736eed0d6d19b",
  "source": {
    "blob": "bc8b255324aa81e668b103193bb23f5c63820ab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant18b09f4847dde7451272696046226036cfb320ec3bb05f2bd80eefd61a6f35a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6c8c9f0b98736eed0d6d19b387b6c68ed56d9f648245310d0cfe02813f4c467",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant18b09f4847dde7451272696046226036cfb320ec3bb05f2bd80eefd61a6f35a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e7df483-06a1-068e-45a8-25790f3d08dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_cellTransfer (n : ℕ) (ell b t : ℝ) (hn : 0 < n)
    (hlow : (n : ℝ) ≤ (n : ℝ) * Real.exp t)
    (hup : (n : ℝ) * Real.exp t < (n : ℝ) + 1) :
    SourcePairing.chebyshevPrimePower ((n : ℝ) * Real.exp t) /
        ((n : ℝ) * Real.exp t) - 1 - (ell - b * t) =
      cellTransfer (SourcePairing.chebyshevPrimePower n / n - 1 - ell)
        (b - 1 - ell) b t := by
  rw [source_prefix_frozen n _ hlow hup]
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
  have hq : SourcePairing.chebyshevPrimePower n / ((n : ℝ) * Real.exp t) =
      Real.exp (-t) * (SourcePairing.chebyshevPrimePower n / n) := by
    rw [Real.exp_neg]
    field_simp
  rw [hq]
  exact frozen_prefix_cellTransfer _ _ _ _

/-- The cell transfer solves the complete affine drift, including the slope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant18b09f4847dde7451272696046226036cfb320ec3bb05f2bd80eefd61a6f35a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant18b09f4847dde7451272696046226036cfb320ec3bb05f2bd80eefd61a6f35a0.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc8b255324aa81e668b103193bb23f5c63820ab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
