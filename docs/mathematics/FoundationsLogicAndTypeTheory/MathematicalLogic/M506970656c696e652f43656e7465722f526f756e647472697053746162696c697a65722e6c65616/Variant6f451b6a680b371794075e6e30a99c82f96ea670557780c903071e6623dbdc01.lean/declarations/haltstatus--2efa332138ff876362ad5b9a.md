# haltStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a7c91699c2541368fae5267efe3ff55a4e6874cccf0ce16d292d917778e4f3d",
  "kind": "def",
  "lexical_name": "haltStatus",
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
  "slug": "haltstatus--2efa332138ff876362ad5b9a",
  "source": {
    "blob": "79c42325f4f0a3def7311dc41bc5d64cab5ee055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 542,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variant6f451b6a680b371794075e6e30a99c82f96ea670557780c903071e6623dbdc01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2efa332138ff876362ad5b9a5c85f0a911b934c1301cd5987448083c6bd4e77c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variant6f451b6a680b371794075e6e30a99c82f96ea670557780c903071e6623dbdc01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a7c91699c2541368fae5267efe3ff55a4e6874cccf0ce16d292d917778e4f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def haltStatus (s : RoundtripStabilityStatus) : Prop :=
  s = RoundtripStabilityStatus.stableResidueFree ∨
    s = RoundtripStabilityStatus.stableWithResidue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variant6f451b6a680b371794075e6e30a99c82f96ea670557780c903071e6623dbdc01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variant6f451b6a680b371794075e6e30a99c82f96ea670557780c903071e6623dbdc01.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c42325f4f0a3def7311dc41bc5d64cab5ee055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
