# MonoidHom.coe_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f4c202462554044f03c0ca86b27bb455fc9ab72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 714,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/caffc0880b3b128bb8961a21ca0b6052176da2d3e419d102d3549f56d4dfc8f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd723501-c70d-ebe1-1c25-ce6db0a88ece",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef9418e2-4c45-6b37-d0c5-cc5f3de321ec",
  "kind": "lemma",
  "lexical_name": "MonoidHom.coe_id",
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
  "slug": "monoidhom-coe-id--f45c06a0a706bb5c3c8683e8",
  "source": {
    "blob": "4f4c202462554044f03c0ca86b27bb455fc9ab72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 714,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantcaffc0880b3b128bb8961a21ca0b6052176da2d3e419d102d3549f56d4dfc8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f45c06a0a706bb5c3c8683e891c5465ce73fb8562faa4269c17def017d7f25cf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantcaffc0880b3b128bb8961a21ca0b6052176da2d3e419d102d3549f56d4dfc8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef9418e2-4c45-6b37-d0c5-cc5f3de321ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonoidHom.coe_id {M : Type*} [MulOneClass M] : (MonoidHom.id M : M → M) = _root_.id := rfl

/-- Composition of `OneHom`s as a `OneHom`. -/
@[to_additive "Composition of `ZeroHom`s as a `ZeroHom`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantcaffc0880b3b128bb8961a21ca0b6052176da2d3e419d102d3549f56d4dfc8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantcaffc0880b3b128bb8961a21ca0b6052176da2d3e419d102d3549f56d4dfc8f2.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f4c202462554044f03c0ca86b27bb455fc9ab72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
