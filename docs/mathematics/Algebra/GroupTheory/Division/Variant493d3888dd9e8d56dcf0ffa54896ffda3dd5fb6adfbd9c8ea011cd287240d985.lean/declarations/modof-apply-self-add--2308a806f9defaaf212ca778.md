# modOf_apply_self_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce1724067d27707884882363e992f2831e9c3a5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f8d28d4-3380-f148-c30c-122e8c864143",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d24a0e3-2c28-84ba-9c23-886fbb3c043e",
  "kind": "theorem",
  "lexical_name": "modOf_apply_self_add",
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
  "slug": "modof-apply-self-add--2308a806f9defaaf212ca778",
  "source": {
    "blob": "ce1724067d27707884882363e992f2831e9c3a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 150,
    "path": "GRWTSK/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2308a806f9defaaf212ca778347ad56a47a69a48898f6c2ab2ba1641f3f70573",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d24a0e3-2c28-84ba-9c23-886fbb3c043e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modOf_apply_self_add (x : AddMonoidAlgebra k G) (g : G) (d : G) : (x %ᵒᶠ g) (g + d) = 0 :=
  modOf_apply_of_exists_add _ _ _ ⟨_, rfl⟩
#align add_monoid_algebra.mod_of_apply_self_add AddMonoidAlgebra.modOf_apply_self_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce1724067d27707884882363e992f2831e9c3a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
