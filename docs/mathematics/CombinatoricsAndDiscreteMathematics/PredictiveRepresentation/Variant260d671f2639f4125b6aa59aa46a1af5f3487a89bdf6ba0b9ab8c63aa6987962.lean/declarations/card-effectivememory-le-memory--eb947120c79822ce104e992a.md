# card_effectiveMemory_le_memory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db071a14662a4192c3a2779b9f8ce5eb411bdec3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e22bf231-33dd-4079-72e9-8ecd0e315553",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edbc58cf-37b3-ef18-5bd7-3ab3e0030011",
  "kind": "theorem",
  "lexical_name": "card_effectiveMemory_le_memory",
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
  "slug": "card-effectivememory-le-memory--eb947120c79822ce104e992a",
  "source": {
    "blob": "db071a14662a4192c3a2779b9f8ce5eb411bdec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 247,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb947120c79822ce104e992a470aec2b33fe63cb7865fe5cd8b3d3d3ebfc6efd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edbc58cf-37b3-ef18-5bd7-3ab3e0030011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_effectiveMemory_le_memory
    [Fintype (PredictiveRepresentation.Memory R)]
    [Fintype (EffectiveMemory R)] :
    Fintype.card (EffectiveMemory R) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  Fintype.card_le_of_injective Subtype.val Subtype.val_injective

/-- Every finite predictive memory has at least as many states as causal state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db071a14662a4192c3a2779b9f8ce5eb411bdec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
