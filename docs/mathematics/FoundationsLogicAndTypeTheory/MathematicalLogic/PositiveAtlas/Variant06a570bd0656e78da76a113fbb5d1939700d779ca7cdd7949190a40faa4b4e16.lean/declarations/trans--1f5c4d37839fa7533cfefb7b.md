# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1872ba4b7a5e82aed5bc07bce4cf28bd7ed126ec18c6900144109cac2b9c2f07",
  "kind": "def",
  "lexical_name": "trans",
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
  "slug": "trans--1f5c4d37839fa7533cfefb7b",
  "source": {
    "blob": "342b41613ca84cb834cdf15869080d34f9b54147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f5c4d37839fa7533cfefb7bbbcf4e594d22e0ea3d23e93e11c9dfb0e6ca5d62",
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

Occurrence: `declaration:1872ba4b7a5e82aed5bc07bce4cf28bd7ed126ec18c6900144109cac2b9c2f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trans (R : CertificateRestriction F G) (T : CertificateRestriction G H) :
    CertificateRestriction F H where
  index := R.index ∘ T.index
  valueEquiv i := (R.valueEquiv (T.index i)).trans (T.valueEquiv i)
  observe i s := by
    change T.valueEquiv i (R.valueEquiv (T.index i) (F.observe _ s)) = _
    rw [R.observe, T.observe]

/-- The same compressed data is sufficient for every explicitly restricted
observable. Information loss enters when it is minimized for the coarse family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342b41613ca84cb834cdf15869080d34f9b54147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
