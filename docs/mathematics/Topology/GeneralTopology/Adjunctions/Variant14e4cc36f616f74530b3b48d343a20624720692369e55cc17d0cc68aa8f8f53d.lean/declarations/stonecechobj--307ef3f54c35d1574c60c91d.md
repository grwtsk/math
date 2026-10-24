# stoneCechObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ada869b31e5f8f009a47655f9728b5c917d50956e868e6e0e1b0b85b6eeec08",
  "kind": "def",
  "lexical_name": "stoneCechObj",
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
  "slug": "stonecechobj--307ef3f54c35d1574c60c91d",
  "source": {
    "blob": "54bde63b9d60dc24a15f81085b1a88c6f02975c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Adjunctions/Variant14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:307ef3f54c35d1574c60c91d9e61419af1b7471144f99abd6fec492495bd312b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adjunctions/Variant14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ada869b31e5f8f009a47655f9728b5c917d50956e868e6e0e1b0b85b6eeec08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stoneCechObj (X : Type u) : Stonean :=
  letI : TopologicalSpace X := ⊥
  haveI : DiscreteTopology X := ⟨rfl⟩
  haveI : ExtremallyDisconnected (StoneCech X) :=
    CompactT2.Projective.extremallyDisconnected StoneCech.projective
  of (StoneCech X)

/-- The equivalence of homsets to establish the adjunction between the Stone-Cech compactification
functor and the forgetful functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adjunctions/Variant14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adjunctions/Variant14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bde63b9d60dc24a15f81085b1a88c6f02975c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
