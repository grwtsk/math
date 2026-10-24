# ι_range_map_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8d8663c-a645-c2ad-cc55-20dfa23e04d0",
  "kind": "theorem",
  "lexical_name": "ι_range_map_map",
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
  "slug": "range-map-map--dc8b42fe43d8ac79dcb646ec",
  "source": {
    "blob": "471ff73b1f3315f7f5bc94a08015c01e62e1356a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 363,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc8b42fe43d8ac79dcb646ec3311c5a1180930941b1d07f88d2331249b65a84f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d8663c-a645-c2ad-cc55-20dfa23e04d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_range_map_map (f : Q₁ →qᵢ Q₂) :
    (LinearMap.range (ι Q₁)).map (map f).toLinearMap = f.range.map (ι Q₂) :=
  (ι_range_map_lift _ _).trans (LinearMap.range_comp _ _)

open Function in
/-- If `f` is a linear map from `M₁` to `M₂` that preserves the quadratic forms, and if it has
a linear retraction `g` that also preserves the quadratic forms, then `CliffordAlgebra.map g`
is a retraction of `CliffordAlgebra.map f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `471ff73b1f3315f7f5bc94a08015c01e62e1356a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
