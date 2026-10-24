# orbitEquivalent_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1355945-1064-bc44-015b-ce9841c52d83",
  "kind": "theorem",
  "lexical_name": "orbitEquivalent_trans",
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
  "slug": "orbitequivalent-trans--f4d709bc05c7b36b1b6f5297",
  "source": {
    "blob": "29f5e1505c6a0370c32d09d5404f8985e19f3f35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d709bc05c7b36b1b6f5297ccbca24c3410fea570e116f422b43f695f679d27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1355945-1064-bc44-015b-ce9841c52d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbitEquivalent_trans {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f g h : WalshFourier.Function n}
    (hfg : OrbitEquivalent G f g)
    (hgh : OrbitEquivalent G g h) :
    OrbitEquivalent G f h := by
  obtain ⟨π, hπ, hg⟩ := hfg
  obtain ⟨σ, hσ, hh⟩ := hgh
  refine ⟨CoordinatePermutation.comp σ π, G.comp_mem hσ hπ, ?_⟩
  rw [hh, hg, permuteFunction_comp]

/-! ## A4. Truth-table codes and canonical representatives -/

/-- Finite truth-table code of an integer-valued cube function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f5e1505c6a0370c32d09d5404f8985e19f3f35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
