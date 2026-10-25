# mathTrustFixtureRuntimeProfiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6440a31058e653806461eb226d1ae178d0a9789bbf4f2f89a23c1562670e67b0",
  "kind": "def",
  "lexical_name": "mathTrustFixtureRuntimeProfiles",
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
  "slug": "mathtrustfixtureruntimeprofiles--9d4dcf3142e31ae06547f692",
  "source": {
    "blob": "e4b1b3bddb9200a9b697b02b3ba7c5fb83b85780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofChecking/Checks/OwnedDeclarationAudit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d4dcf3142e31ae06547f69226953278ea349306d629d9247c24436ce679c0de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/Checks/OwnedDeclarationAudit__SourceOccurrence5914f59a540768ed7c764bbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6440a31058e653806461eb226d1ae178d0a9789bbf4f2f89a23c1562670e67b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mathTrustFixtureRuntimeProfiles : Array (Name × Name × Name × String) := #[
  (`GRWTSK.Fixture.RuntimeStructural, `GRWTSK.Fixture.RuntimeStructural.depth._unsafe_rec, `GRWTSK.Fixture.RuntimeStructural.depth, "0be8353e896218d8c79446f0bdd1a1978c365c2e54d8ca22a60450df28c14afe"),
  (`GRWTSK.Fixture.RuntimeWellFounded, `GRWTSK.Fixture.RuntimeWellFounded.depth._unsafe_rec, `GRWTSK.Fixture.RuntimeWellFounded.depth, "61427aa9348975d7932d9d8114288b41f122bfa863f06954731874c35d710f78"),
  (`GRWTSK.Fixture.OpaqueParent, `GRWTSK.Fixture.OpaqueParent.base._unsafe_rec, `GRWTSK.Fixture.OpaqueParent.base, "b80924c9bebed2ec3ab30eee89657d5bf53c944735088cc2594e653d4afc8bcf"),
  (`GRWTSK.Fixture.MissingParent, `GRWTSK.Fixture.MissingParent.base._unsafe_rec, `GRWTSK.Fixture.MissingParent.base, "20e94fc3e08f9aceb6d565710ed1a605d82f9e518abd88f9c085b7cc2d0e86f2"),
  (`GRWTSK.Fixture.UnsafeParent, `GRWTSK.Fixture.UnsafeParent.base._unsafe_rec, `GRWTSK.Fixture.UnsafeParent.base, "df2f07c889b050fdc0697e17a2e85f5081154676453d4dc8082f6160ad5f6e66"),
  (`GRWTSK.Fixture.PartialParent, `GRWTSK.Fixture.PartialParent.base._unsafe_rec, `GRWTSK.Fixture.PartialParent.base, "d6d0e6d2df7224aa465a482bee0dd9fbed125680baaff36c4c4601d083a5f0fd"),
  (`GRWTSK.Fixture.TypeMismatch, `GRWTSK.Fixture.TypeMismatch.base._unsafe_rec, `GRWTSK.Fixture.TypeMismatch.base, "e873192efa8d3fd6d11777e790286aa1da14124353bb708c0ef83ce254c547d1"),
  (`GRWTSK.Fixture.LevelMismatch, `GRWTSK.Fixture.LevelMismatch.base._unsafe_rec, `GRWTSK.Fixture.LevelMismatch.base, "ba4f09b6016aab99d0ff331a09b283b46807decf5e0e28939ff62245e6219163"),
  (`GRWTSK.Fixture.TypeReference, `GRWTSK.Fixture.TypeReference.base._unsafe_rec, `GRWTSK.Fixture.TypeReference.base, "63278cd4a8843550a156f3632e6fef29f4c56ed3ecfe89944425e45e1915ba13"),
  (`GRWTSK.Fixture.ValueReference, `GRWTSK.Fixture.ValueReference.base._unsafe_rec, `GRWTSK.Fixture.ValueReference.base, "a9eebc3dd1eb6b741bb7339302e973ad207cdcc3ce798464079e79d723cbd9d6"),
  (`GRWTSK.Fixture.ForeignHelper, `GRWTSK.Fixture.ForeignParent.base._unsafe_rec, `GRWTSK.Fixture.ForeignParent.base, "09c4a4be9134610061ac5118c29eeb82856a0de2abc3ac3dfb440683208545d6")
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/Checks/OwnedDeclarationAudit__SourceOccurrence5914f59a540768ed7c764bbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofChecking/Checks/OwnedDeclarationAudit.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b1b3bddb9200a9b697b02b3ba7c5fb83b85780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
