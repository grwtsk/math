# powers.isSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "429bc4e199cf96b3ff1c543ec7f14b06f5596d7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/befe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6c1d5fa-3274-98fd-f38c-5b3b1d4620ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afff04ac-e799-d02a-4be3-704a78e6e9bd",
  "kind": "theorem",
  "lexical_name": "powers.isSubmonoid",
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
  "slug": "powers-issubmonoid--51093290b51b7c82d7cf35a1",
  "source": {
    "blob": "429bc4e199cf96b3ff1c543ec7f14b06f5596d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 160,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51093290b51b7c82d7cf35a17ff7650125b68346077b18e5420250f4e7a2ef5c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afff04ac-e799-d02a-4be3-704a78e6e9bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powers.isSubmonoid (x : M) : IsSubmonoid (powers x) :=
  { one_mem := powers.one_mem
    mul_mem := powers.mul_mem }
#align powers.is_submonoid powers.isSubmonoid
#align multiples.is_add_submonoid multiples.isAddSubmonoid

/-- A monoid is a submonoid of itself. -/
@[to_additive "An `AddMonoid` is an `AddSubmonoid` of itself."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429bc4e199cf96b3ff1c543ec7f14b06f5596d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
