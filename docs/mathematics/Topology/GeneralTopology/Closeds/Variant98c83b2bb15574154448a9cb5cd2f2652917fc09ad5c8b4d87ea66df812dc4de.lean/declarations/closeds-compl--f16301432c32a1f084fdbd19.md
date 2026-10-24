# Closeds.compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92a3b4394212c8d3847c0b1fe14cf0998faf74d63d95a9df8d1bd735d2940549",
  "kind": "def",
  "lexical_name": "Closeds.compl",
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
  "slug": "closeds-compl--f16301432c32a1f084fdbd19",
  "source": {
    "blob": "6673e92549d793b23444c591bf7a2fb2d207b57e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f16301432c32a1f084fdbd19a30ac58b3c3b714fc2e0adcadbf268ef5f2fdffd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92a3b4394212c8d3847c0b1fe14cf0998faf74d63d95a9df8d1bd735d2940549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Closeds.compl (s : Closeds α) : Opens α :=
  ⟨sᶜ, s.2.isOpen_compl⟩

/-- The complement of an open set as a closed set. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6673e92549d793b23444c591bf7a2fb2d207b57e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
