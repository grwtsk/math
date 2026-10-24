# symm_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:164ead66-57b8-60c4-28db-25cd15e35ba7",
  "kind": "theorem",
  "lexical_name": "symm_apply_eq",
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
  "slug": "symm-apply-eq--4b4dd7e05c4fb309b4f746f5",
  "source": {
    "blob": "6096295590a37ce17637bd8d44f02f7cce9a87a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 88,
    "path": "GRWTSK/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b4dd7e05c4fb309b4f746f5c1a7e2c791470fcdb3ea969cac2cb97d0014bce6",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:164ead66-57b8-60c4-28db-25cd15e35ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_apply_eq (e : G ≃+c[a, b] H) {a b} :
    e.symm a = b ↔ a = e b :=
  e.toEquiv.symm_apply_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6096295590a37ce17637bd8d44f02f7cce9a87a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
