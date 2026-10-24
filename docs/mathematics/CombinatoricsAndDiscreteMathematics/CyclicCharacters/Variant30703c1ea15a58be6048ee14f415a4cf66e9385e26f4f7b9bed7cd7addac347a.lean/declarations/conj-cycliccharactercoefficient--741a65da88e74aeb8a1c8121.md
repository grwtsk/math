# conj_cyclicCharacterCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afaffeb5-9f7b-6014-a704-10afbf0cc776",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eee2584d-2c67-2966-6c66-5e8fe914bcb4",
  "kind": "theorem",
  "lexical_name": "conj_cyclicCharacterCoefficient",
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
  "slug": "conj-cycliccharactercoefficient--741a65da88e74aeb8a1c8121",
  "source": {
    "blob": "f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:741a65da88e74aeb8a1c812158d8a314927a5cb4f81202fa161cd839090db2c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eee2584d-2c67-2966-6c66-5e8fe914bcb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem conj_cyclicCharacterCoefficient
    (j : ZMod n) (signal : CyclicSignal n) :
    conj (cyclicCharacterCoefficient j signal) =
      ∑ r : ZMod n, conj (signal r) * cyclicCharacter j r := by
  classical
  unfold cyclicCharacterCoefficient
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro r _
  rw [map_mul]
  simp only [starRingEnd_apply, star_star]
  ring

omit [NeZero n] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
