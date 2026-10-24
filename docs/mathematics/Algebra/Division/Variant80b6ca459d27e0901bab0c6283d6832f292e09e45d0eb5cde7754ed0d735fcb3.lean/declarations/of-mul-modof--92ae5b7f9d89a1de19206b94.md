# of'_mul_modOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98382f597e7b57c5e861880bccddccd7a44a042f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3779067e-cc24-a5c8-6293-4698aa1e2f49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:378cbe49-734d-bd2b-b26c-e2b95bb1d2ea",
  "kind": "theorem",
  "lexical_name": "of'_mul_modOf",
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
  "slug": "of-mul-modof--92ae5b7f9d89a1de19206b94",
  "source": {
    "blob": "98382f597e7b57c5e861880bccddccd7a44a042f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 140,
    "path": "GRWTSK/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92ae5b7f9d89a1de19206b9469e0d4e3a0fa0d7a61ed3fda435a4cd663523727",
  "verification": {
    "reference": "docs/verification/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:378cbe49-734d-bd2b-b26c-e2b95bb1d2ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of'_mul_modOf (g : G) (x : k[G]) : of' k G g * x %ᵒᶠ g = 0 := by
  ext g'
  rw [Finsupp.zero_apply]
  obtain ⟨d, rfl⟩ | h := em (∃ d, g' = g + d)
  · rw [modOf_apply_self_add]
  · rw [modOf_apply_of_not_exists_add _ _ _ h, of'_apply, single_mul_apply_of_not_exists_add _ _ h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98382f597e7b57c5e861880bccddccd7a44a042f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
