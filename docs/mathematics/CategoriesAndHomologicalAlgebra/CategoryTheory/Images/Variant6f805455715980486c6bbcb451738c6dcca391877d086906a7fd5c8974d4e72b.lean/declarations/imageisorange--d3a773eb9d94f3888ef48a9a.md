# imageIsoRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:315c53766284461dad4aecdc743588a0caa0c68abdeac7f8ecc6ad7969e3437b",
  "kind": "def",
  "lexical_name": "imageIsoRange",
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
  "slug": "imageisorange--d3a773eb9d94f3888ef48a9a",
  "source": {
    "blob": "969adb23ea7804d5c1721a36d3159e8698ace622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3a773eb9d94f3888ef48a9a5f0639ff77e074819a7b51711e4824b96a35bb61",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:315c53766284461dad4aecdc743588a0caa0c68abdeac7f8ecc6ad7969e3437b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def imageIsoRange {G H : AddCommGrp.{0}} (f : G ⟶ H) :
    Limits.image f ≅ AddCommGrp.of f.hom.range :=
  IsImage.isoExt (Image.isImage f) (isImage f)

end AddCommGrp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `969adb23ea7804d5c1721a36d3159e8698ace622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
