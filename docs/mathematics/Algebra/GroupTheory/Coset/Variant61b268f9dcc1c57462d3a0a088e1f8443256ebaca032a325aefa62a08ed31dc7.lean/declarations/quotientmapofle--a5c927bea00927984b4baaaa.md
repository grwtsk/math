# quotientMapOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dba1b107ebd6fd1fcf072e65ac72b3c6f517e3c4bd5c511f4f533619d6249a4",
  "kind": "def",
  "lexical_name": "quotientMapOfLE",
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
  "slug": "quotientmapofle--a5c927bea00927984b4baaaa",
  "source": {
    "blob": "6f0dc57e1d8d59761ae0a61c675061a3fa4caae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 732,
    "path": "GRWTSK/Algebra/GroupTheory/Coset/Variant61b268f9dcc1c57462d3a0a088e1f8443256ebaca032a325aefa62a08ed31dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5c927bea00927984b4baaaa919784330a72b3c38dc1884482743df4f385c9e4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Coset/Variant61b268f9dcc1c57462d3a0a088e1f8443256ebaca032a325aefa62a08ed31dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dba1b107ebd6fd1fcf072e65ac72b3c6f517e3c4bd5c511f4f533619d6249a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientMapOfLE (h : s ≤ t) : α ⧸ s → α ⧸ t :=
  Quotient.map' id fun a b => by
    simp_rw [leftRel_eq]
    apply h
#align subgroup.quotient_map_of_le Subgroup.quotientMapOfLE
#align add_subgroup.quotient_map_of_le AddSubgroup.quotientMapOfLE

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Coset/Variant61b268f9dcc1c57462d3a0a088e1f8443256ebaca032a325aefa62a08ed31dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Coset/Variant61b268f9dcc1c57462d3a0a088e1f8443256ebaca032a325aefa62a08ed31dc7.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f0dc57e1d8d59761ae0a61c675061a3fa4caae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
