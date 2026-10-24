# uliftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4abd14a545bf7085804177f4c67307bde416a0b4a2152d5de7cd1a790e977b9",
  "kind": "def",
  "lexical_name": "uliftFunctor",
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
  "slug": "uliftfunctor--96e9a43b77d6d07f398773ba",
  "source": {
    "blob": "9da0a33b637d29fe9042f1f94861ce0aaad9beee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96e9a43b77d6d07f398773ba885321ea76e36913ee8bfdd425524351c21e230d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4abd14a545bf7085804177f4c67307bde416a0b4a2152d5de7cd1a790e977b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftFunctor : TopCat.{u} ⥤ TopCat.{max u v} where
  obj X := ↧(ULift.{v} X)
  map {X Y} f := ofHom ⟨ULift.map f, by fun_prop⟩

/-- Given `X : TopCat.{u}`, this is the homeomorphism `X ≃ₜ uliftFunctor.{v}.obj X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da0a33b637d29fe9042f1f94861ce0aaad9beee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
