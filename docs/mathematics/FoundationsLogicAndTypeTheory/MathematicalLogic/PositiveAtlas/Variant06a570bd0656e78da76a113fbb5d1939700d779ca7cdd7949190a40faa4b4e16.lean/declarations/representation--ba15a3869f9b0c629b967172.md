# representation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23bd46816cfafb3e4c0d46a5f8c25e1b53c87129c5fcb71a30cff65542cc58b0",
  "kind": "def",
  "lexical_name": "representation",
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
  "slug": "representation--ba15a3869f9b0c629b967172",
  "source": {
    "blob": "342b41613ca84cb834cdf15869080d34f9b54147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba15a3869f9b0c629b967172b5b997408600b5d8f206051c43d2e8c62c9b3d65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23bd46816cfafb3e4c0d46a5f8c25e1b53c87129c5fcb71a30cff65542cc58b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def representation (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F) :
    SufficientRepresentation.{u, v₂, w₂, a} G where
  carrier := p.carrier
  compress := p.compress
  recover i x := R.valueEquiv i (p.recover (R.index i) x)
  recover_compress i s := by
    rw [p.recover_compress, R.observe]

/-- A fine sufficient carrier maps into a coarse minimal carrier. Its
minimality hypothesis is at the actual fine-carrier universe. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342b41613ca84cb834cdf15869080d34f9b54147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
