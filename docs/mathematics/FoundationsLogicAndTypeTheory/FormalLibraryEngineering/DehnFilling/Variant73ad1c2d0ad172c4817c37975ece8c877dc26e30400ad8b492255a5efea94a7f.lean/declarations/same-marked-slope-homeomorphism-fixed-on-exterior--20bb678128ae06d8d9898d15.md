# same_marked_slope_homeomorphism_fixed_on_exterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d81ddab3-9bca-c4a4-5794-88d1abcc9266",
  "kind": "theorem",
  "lexical_name": "same_marked_slope_homeomorphism_fixed_on_exterior",
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
  "slug": "same-marked-slope-homeomorphism-fixed-on-exterior--20bb678128ae06d8d9898d15",
  "source": {
    "blob": "014939dd8ba80a0135bf861223ec7eaf9ffc345a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variant73ad1c2d0ad172c4817c37975ece8c877dc26e30400ad8b492255a5efea94a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20bb678128ae06d8d9898d15627ef905c3549f5d2adea5489f735c4bd9bd1b31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variant73ad1c2d0ad172c4817c37975ece8c877dc26e30400ad8b492255a5efea94a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d81ddab3-9bca-c4a4-5794-88d1abcc9266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_marked_slope_homeomorphism_fixed_on_exterior
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot} {r : T.Slope K}
    (left right : C.Gluing K r) :
    C.FixedOnExterior (C.same_marked_slope_homeomorphism left right) :=
  C.compare_fixed_on_exterior left right

/--
The meridional filling is oriented-homeomorphic to the supplier's `S^3`,
conditional on an original-neighbourhood presentation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variant73ad1c2d0ad172c4817c37975ece8c877dc26e30400ad8b492255a5efea94a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variant73ad1c2d0ad172c4817c37975ece8c877dc26e30400ad8b492255a5efea94a7f.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014939dd8ba80a0135bf861223ec7eaf9ffc345a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
