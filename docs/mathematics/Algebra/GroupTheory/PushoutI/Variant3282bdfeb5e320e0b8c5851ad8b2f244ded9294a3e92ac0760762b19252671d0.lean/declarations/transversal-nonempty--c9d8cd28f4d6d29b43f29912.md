# transversal_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "993453553d0f9e5e7faf38ad15f434a476bd2883",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbf04df2-5c6d-12b4-1bff-7b443558b695",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33ce0b40-9cba-e5a8-8728-87e144a50173",
  "kind": "theorem",
  "lexical_name": "transversal_nonempty",
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
  "slug": "transversal-nonempty--c9d8cd28f4d6d29b43f29912",
  "source": {
    "blob": "993453553d0f9e5e7faf38ad15f434a476bd2883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 232,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9d8cd28f4d6d29b43f299129f6593dc7db586341a1056390c4c9ee905e06a8c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33ce0b40-9cba-e5a8-8728-87e144a50173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transversal_nonempty (hφ : ∀ i, Injective (φ i)) : Nonempty (Transversal φ) := by
  choose t ht using fun i => (φ i).range.exists_isComplement_right 1
  apply Nonempty.intro
  exact
    { injective := hφ
      set := t
      one_mem := fun i => (ht i).2
      compl := fun i => (ht i).1 }

variable {φ}

/-- The normal form for words in the pushout. Every element of the pushout is the product of an
element of the base group and a word made up of letters each of which is in the transversal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `993453553d0f9e5e7faf38ad15f434a476bd2883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
