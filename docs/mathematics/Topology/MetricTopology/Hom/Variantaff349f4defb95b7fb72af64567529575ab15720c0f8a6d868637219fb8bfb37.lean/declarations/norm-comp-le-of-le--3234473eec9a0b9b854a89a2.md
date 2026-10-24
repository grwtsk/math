# norm_comp_le_of_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71696dd7-134b-1cf4-0afe-877ea4dece4a",
  "kind": "theorem",
  "lexical_name": "norm_comp_le_of_le'",
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
  "slug": "norm-comp-le-of-le--3234473eec9a0b9b854a89a2",
  "source": {
    "blob": "7112c599b0081688cfe0b4890f026ac034186c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 582,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3234473eec9a0b9b854a89a2858e7ee0d5105a20d9e8906784e92a387d81245b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71696dd7-134b-1cf4-0afe-877ea4dece4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_comp_le_of_le' {g : NormedAddGroupHom V₂ V₃} (C₁ C₂ C₃ : ℝ) (h : C₃ = C₂ * C₁)
    (hg : ‖g‖ ≤ C₂) (hf : ‖f‖ ≤ C₁) : ‖g.comp f‖ ≤ C₃ := by
  rw [h]
  exact norm_comp_le_of_le hg hf

/-- Composition of normed groups hom as an additive group morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7112c599b0081688cfe0b4890f026ac034186c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
