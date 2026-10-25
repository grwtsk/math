# SelectedS2VertexCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70fe730102365496f8c4ea65dcbd46afb8422e38c38adb036a799c84583422a8",
  "kind": "def",
  "lexical_name": "SelectedS2VertexCompatibility",
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
  "slug": "selecteds2vertexcompatibility--ad136fbd9d82a64d7a0844d4",
  "source": {
    "blob": "df12ebcd950ec40ec4a54236d0679bb99f5fa5dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad136fbd9d82a64d7a0844d402cb504ce8d1cb35cb33261b305815bd3593b4d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70fe730102365496f8c4ea65dcbd46afb8422e38c38adb036a799c84583422a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SelectedS2VertexCompatibility
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (SM : ControlledSphericalModel S M)
    (V : InjectiveS1VertexPlacement M.graph SM.sphere1) :
    SphericalRealizationChoice SM.realization SM.sphere2 SM.sphere3 → Prop
  | .sphere2 E =>
      ∃ B : InjectiveS1ToS2Placement SM.sphere1 SM.sphere2,
        VertexCompatibleS2Realization
          SM.realization SM.sphere1 SM.sphere2 V B E
  | .sphere3 _ => True

/--
One coherent research witness package.  Every CS-03--CS-08 projection uses
this same vertex placement and the same selected `S²` or `S³` realization.
Compactness is asserted for `S¹` and for exactly the selected carrier.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df12ebcd950ec40ec4a54236d0679bb99f5fa5dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
