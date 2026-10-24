# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66d4aae4611ddc8d8aa5743acf806ee851dceb7fa8f8627a13cd982aae2f4c10",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5f76ba4451cd27b986dfeb40",
  "source": {
    "blob": "1a780ee7725d2e0010a9fa3fbfa11d0e453fd126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variantdb3a6c0ef760d58f72751edba6748ea4ea82812a6ba00f4182751e569aaa4f8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f76ba4451cd27b986dfeb408adcbf7302eecff69475d6bac18c8e562b5b9dd6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variantdb3a6c0ef760d58f72751edba6748ea4ea82812a6ba00f4182751e569aaa4f8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66d4aae4611ddc8d8aa5743acf806ee851dceb7fa8f8627a13cd982aae2f4c10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : InfSet (Nucleus X) where
  sInf s :=
  { toFun x := ⨅ f ∈ s, f x,
    map_inf' x y := by
      simp only [InfHomClass.map_inf, le_antisymm_iff, le_inf_iff, le_iInf_iff]
      refine ⟨⟨?_, ?_⟩, ?_⟩ <;> rintro f hf
      · exact iInf₂_le_of_le f hf inf_le_left
      · exact iInf₂_le_of_le f hf inf_le_right
      · exact ⟨inf_le_of_left_le <| iInf₂_le f hf, inf_le_of_right_le <| iInf₂_le f hf⟩
    idempotent' x := iInf₂_mono fun f hf ↦ (f.monotone <| iInf₂_le f hf).trans_eq (f.idempotent _)
    le_apply' x := by simp [le_apply] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variantdb3a6c0ef760d58f72751edba6748ea4ea82812a6ba00f4182751e569aaa4f8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variantdb3a6c0ef760d58f72751edba6748ea4ea82812a6ba00f4182751e569aaa4f8f.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a780ee7725d2e0010a9fa3fbfa11d0e453fd126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
