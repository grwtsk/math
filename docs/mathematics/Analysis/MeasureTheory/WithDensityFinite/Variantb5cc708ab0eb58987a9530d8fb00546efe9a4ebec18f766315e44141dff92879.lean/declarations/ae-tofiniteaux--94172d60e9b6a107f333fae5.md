# ae_toFiniteAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea7ac17f-31ad-efd7-81ad-df546e968b73",
  "kind": "lemma",
  "lexical_name": "ae_toFiniteAux",
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
  "slug": "ae-tofiniteaux--94172d60e9b6a107f333fae5",
  "source": {
    "blob": "2ce8573454162aff7f65e321cde30df684f89465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94172d60e9b6a107f333fae577a1d0beff11ca3f0cbf3741343d3d94cbfa3769",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea7ac17f-31ad-efd7-81ad-df546e968b73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_toFiniteAux [SFinite μ] : ae μ.toFiniteAux = ae μ := by
  rw [Measure.toFiniteAux]
  split_ifs
  · simp
  · obtain ⟨_, h₁, h₂⟩ := (exists_isFiniteMeasure_absolutelyContinuous μ).choose_spec
    exact h₂.ae_le.antisymm h₁.ae_le

@[local instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ce8573454162aff7f65e321cde30df684f89465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
