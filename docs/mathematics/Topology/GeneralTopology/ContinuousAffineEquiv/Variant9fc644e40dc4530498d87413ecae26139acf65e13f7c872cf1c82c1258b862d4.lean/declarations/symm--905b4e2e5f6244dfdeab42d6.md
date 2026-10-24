# symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7f6b0e221b89295aa0d29a8317d60e126127e650425352a16cf7560d77eefd0",
  "kind": "def",
  "lexical_name": "symm",
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
  "slug": "symm--905b4e2e5f6244dfdeab42d6",
  "source": {
    "blob": "075aebb978e9bd0765645a4b4f0bfe140df3225c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:905b4e2e5f6244dfdeab42d6acb3dcbe54419a103a8a4b3795dee9a23872cad0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7f6b0e221b89295aa0d29a8317d60e126127e650425352a16cf7560d77eefd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def symm (e : P₁ ≃ᴬ[k] P₂) : P₂ ≃ᴬ[k] P₁ where
  toAffineEquiv := e.toAffineEquiv.symm
  continuous_toFun := e.continuous_invFun
  continuous_invFun := e.continuous_toFun

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075aebb978e9bd0765645a4b4f0bfe140df3225c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
