# identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81b9292bc477af55ff80ef3e04bf8bb8297dd8ca4c3af8ade48cab379ef35580",
  "kind": "def",
  "lexical_name": "identity",
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
  "slug": "identity--a4da3459269dc0f6c27aaeea",
  "source": {
    "blob": "2f149874b95eb7e267f56a9a528dd9eee625a71e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4,
    "line": 4,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/CorePositive/Variant4216cf8597fe553f70c1778ca468762b91d2ad97966634101c071570cfa62f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4da3459269dc0f6c27aaeea96f1d1b817e4baae1b20e8e77cdd4dce54840f90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/CorePositive/Variant4216cf8597fe553f70c1778ca468762b91d2ad97966634101c071570cfa62f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81b9292bc477af55ff80ef3e04bf8bb8297dd8ca4c3af8ade48cab379ef35580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–4.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identity {α : Type u} (a : α) : α := a
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/CorePositive/Variant4216cf8597fe553f70c1778ca468762b91d2ad97966634101c071570cfa62f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/CorePositive/Variant4216cf8597fe553f70c1778ca468762b91d2ad97966634101c071570cfa62f81.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f149874b95eb7e267f56a9a528dd9eee625a71e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
