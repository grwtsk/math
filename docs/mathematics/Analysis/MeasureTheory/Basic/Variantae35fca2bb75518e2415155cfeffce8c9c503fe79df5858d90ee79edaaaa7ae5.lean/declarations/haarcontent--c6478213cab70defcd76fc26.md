# haarContent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39bcd8c56e67240901e57c9ea04873faa79ebfa0b2c84fb45ecb7d17b5aa4175",
  "kind": "def",
  "lexical_name": "haarContent",
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
  "slug": "haarcontent--c6478213cab70defcd76fc26",
  "source": {
    "blob": "a3dfeefbdc07b9ec2263ffba68caddeddc152583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 459,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6478213cab70defcd76fc263b92fde6cd41a9e1eaed9aeaba62a366d4b92772",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39bcd8c56e67240901e57c9ea04873faa79ebfa0b2c84fb45ecb7d17b5aa4175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def haarContent (K₀ : PositiveCompacts G) : Content G where
  toFun K := ⟨chaar K₀ K, chaar_nonneg _ _⟩
  mono' K₁ K₂ h := by simp only [← NNReal.coe_le_coe, NNReal.toReal, chaar_mono, h]
  sup_disjoint' K₁ K₂ h _h₁ h₂ := by simp only [chaar_sup_eq h]; rfl
  sup_le' K₁ K₂ := by
    simp only [← NNReal.coe_le_coe, NNReal.coe_add]
    simp only [NNReal.toReal, chaar_sup_le]

/-! We only prove the properties for `haarContent` that we use at least twice below. -/


@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3dfeefbdc07b9ec2263ffba68caddeddc152583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
