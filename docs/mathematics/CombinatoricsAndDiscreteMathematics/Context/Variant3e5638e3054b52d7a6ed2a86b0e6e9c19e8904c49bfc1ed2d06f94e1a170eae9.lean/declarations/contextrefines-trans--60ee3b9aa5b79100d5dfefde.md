# contextRefines_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "579986cfb33eadc52b73f5fbb7a3b4a7ecf63829",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e59f2aaa-ac36-9546-8143-c7a34e9fa1e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6700ba87-3ce0-09c8-0ec9-31a334ecdc61",
  "kind": "theorem",
  "lexical_name": "contextRefines_trans",
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
  "slug": "contextrefines-trans--60ee3b9aa5b79100d5dfefde",
  "source": {
    "blob": "579986cfb33eadc52b73f5fbb7a3b4a7ecf63829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60ee3b9aa5b79100d5dfefdef10358d8d1cd48e5eae3bc2533326ab2d86a4387",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6700ba87-3ce0-09c8-0ec9-31a334ecdc61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contextRefines_trans {specific middle general : Context}
    (first : ContextRefines specific middle)
    (second : ContextRefines middle general) :
    ContextRefines specific general := by
  rcases first with
    ⟨snapshot₁, text₁, sentence₁, discourse₁, task₁,
      domain₁, speaker₁, time₁, register₁⟩
  rcases second with
    ⟨snapshot₂, text₂, sentence₂, discourse₂, task₂,
      domain₂, speaker₂, time₂, register₂⟩
  refine
    ⟨snapshot₁.trans snapshot₂,
      ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro value equality
    exact text₁ value (text₂ value equality)
  · intro value equality
    exact sentence₁ value (sentence₂ value equality)
  · intro value equality
    exact discourse₁ value (discourse₂ value equality)
  · intro value equality
    exact task₁ value (task₂ value equality)
  · intro value equality
    exact domain₁ value (domain₂ value equality)
  · intro value equality
    exact speaker₁ value (speaker₂ value equality)
  · intro value equality
    exact time₁ value (time₂ value equality)
  · intro value equality
    exact register₁ value (register₂ value equality)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579986cfb33eadc52b73f5fbb7a3b4a7ecf63829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
