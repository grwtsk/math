# mapIsoWhiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39e16c275e927d8faf0943c8c69802297f6f68160495193346025baf3ca09596",
  "kind": "def",
  "lexical_name": "mapIsoWhiskerRight",
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
  "slug": "mapisowhiskerright--c5b2c6332013a528caaeed4a",
  "source": {
    "blob": "2360df444fb04aab40089408de6a0f466fa24718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 520,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5b2c6332013a528caaeed4af44ff4d0b0d6665e0802f47a7459536fac050621",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39e16c275e927d8faf0943c8c69802297f6f68160495193346025baf3ca09596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapIsoWhiskerRight {Fₗ : C ⥤ E} {Gₗ : C ⥤ E} (α : Fₗ ≅ Gₗ) (H : D ⥤ E') :
    mapPair Fₗ H ≅ mapPair Gₗ H :=
  mkNatIso
    (mapPairLeft Fₗ H ≪≫ isoWhiskerRight α (inclLeft E E') ≪≫ (mapPairLeft Gₗ H).symm)
    (mapPairRight Fₗ H ≪≫ isoWhiskerRight (Iso.refl H) (inclRight E E') ≪≫ (mapPairRight Gₗ H).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2360df444fb04aab40089408de6a0f466fa24718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
