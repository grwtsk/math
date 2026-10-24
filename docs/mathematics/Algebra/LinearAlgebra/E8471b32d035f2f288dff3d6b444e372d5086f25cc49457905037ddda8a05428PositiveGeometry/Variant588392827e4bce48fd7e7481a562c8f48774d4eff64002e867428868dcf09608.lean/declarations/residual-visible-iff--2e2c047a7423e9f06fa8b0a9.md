# residual_visible_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11b47464-82f1-9b03-3021-1dede66a1d2a",
  "kind": "theorem",
  "lexical_name": "residual_visible_iff",
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
  "slug": "residual-visible-iff--2e2c047a7423e9f06fa8b0a9",
  "source": {
    "blob": "cb9b1b416e7617cda433a8f00784cb09aabf3430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variant588392827e4bce48fd7e7481a562c8f48774d4eff64002e867428868dcf09608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e2c047a7423e9f06fa8b0a9906cb221e6588dace3a1c736699049ad23a11601",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variant588392827e4bce48fd7e7481a562c8f48774d4eff64002e867428868dcf09608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11b47464-82f1-9b03-3021-1dede66a1d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_visible_iff (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) (u : Residual) :
    (R.residualForm G).Visible u ↔ G.Visible (R.residualMap u) :=
  Iff.rfl

/-- A residual coordinate is invisible exactly when its residual image is null
in the ambient positive geometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variant588392827e4bce48fd7e7481a562c8f48774d4eff64002e867428868dcf09608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variant588392827e4bce48fd7e7481a562c8f48774d4eff64002e867428868dcf09608.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb9b1b416e7617cda433a8f00784cb09aabf3430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
