# selfAdjoint.expUnitaryPathToOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b02dc86788f4ea8b20a61931ecd9277567258e6630a6f5d7b2bee82f5cfee78d",
  "kind": "def",
  "lexical_name": "selfAdjoint.expUnitaryPathToOne",
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
  "slug": "selfadjoint-expunitarypathtoone--f84fc1469dd1dcc60684d335",
  "source": {
    "blob": "fdf99dad2c9f818337c724519473d18c1e69d0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f84fc1469dd1dcc60684d335c26a37c574c8ff23cdd52cbd0a5dc036be21ed76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b02dc86788f4ea8b20a61931ecd9277567258e6630a6f5d7b2bee82f5cfee78d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def selfAdjoint.expUnitaryPathToOne (x : selfAdjoint A) :
    Path 1 (expUnitary x) where
  toFun t := expUnitary ((t : ℝ) • x)
  continuous_toFun := by fun_prop
  source' := by simp
  target' := by simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf99dad2c9f818337c724519473d18c1e69d0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
