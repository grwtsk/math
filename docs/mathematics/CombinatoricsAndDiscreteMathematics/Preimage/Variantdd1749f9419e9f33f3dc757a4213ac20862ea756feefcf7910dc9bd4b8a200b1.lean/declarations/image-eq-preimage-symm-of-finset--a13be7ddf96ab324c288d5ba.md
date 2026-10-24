# image_eq_preimage_symm_of_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e92696cd5dde25b6654fd24546918f16d96695e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26b358f4-dabb-9b63-5a86-345d16b928c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82a15613-03ab-5aa1-b5fa-7aea8ebfa54f",
  "kind": "lemma",
  "lexical_name": "image_eq_preimage_symm_of_finset",
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
  "slug": "image-eq-preimage-symm-of-finset--a13be7ddf96ab324c288d5ba",
  "source": {
    "blob": "7e92696cd5dde25b6654fd24546918f16d96695e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a13be7ddf96ab324c288d5ba96a057408b610b71abab3499759b849847b7524c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82a15613-03ab-5aa1-b5fa-7aea8ebfa54f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_eq_preimage_symm_of_finset [DecidableEq β] (e : α ≃ β) (s : Finset α) :
    s.image e = s.preimage e.symm e.symm.injective.injOn :=
  e.symm.image_symm_eq_preimage_of_finset s

end Equiv

/-- Reindexing and then restricting to a `Finset` is the same as first restricting to the preimage
of this `Finset` and then reindexing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e92696cd5dde25b6654fd24546918f16d96695e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
