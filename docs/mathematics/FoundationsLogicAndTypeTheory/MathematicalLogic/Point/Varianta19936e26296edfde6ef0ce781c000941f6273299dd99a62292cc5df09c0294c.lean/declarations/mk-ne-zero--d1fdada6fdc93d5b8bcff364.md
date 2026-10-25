# mk_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdff5e56c91360a54f35df53b8ad8c01b9fcd4a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a19936e26296edfde6ef0ce781c000941f6273299dd99a62292cc5df09c0294c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0da7b0b2-07ff-7e25-3d87-bced48294a75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75cdb13f-9c7e-3361-b5f0-2878c89c6ad3",
  "kind": "lemma",
  "lexical_name": "mk_ne_zero",
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
  "slug": "mk-ne-zero--d1fdada6fdc93d5b8bcff364",
  "source": {
    "blob": "bdff5e56c91360a54f35df53b8ad8c01b9fcd4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 376,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Varianta19936e26296edfde6ef0ce781c000941f6273299dd99a62292cc5df09c0294c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1fdada6fdc93d5b8bcff364e07b188925e7843d0731ba851f43c0359d675d36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Varianta19936e26296edfde6ef0ce781c000941f6273299dd99a62292cc5df09c0294c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75cdb13f-9c7e-3361-b5f0-2878c89c6ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_ne_zero [Nontrivial R] {X Y : R} (h : W'.NonsingularLift ⟦![X, Y, 1]⟧) : mk h ≠ 0 :=
  (not_equiv_of_Z_eq_zero_right one_ne_zero rfl).comp <| Quotient.eq.mp.comp Point.ext_iff.mp

/-- The natural map from a nonsingular point on a Weierstrass curve in affine coordinates to its
corresponding nonsingular projective point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Varianta19936e26296edfde6ef0ce781c000941f6273299dd99a62292cc5df09c0294c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Varianta19936e26296edfde6ef0ce781c000941f6273299dd99a62292cc5df09c0294c.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdff5e56c91360a54f35df53b8ad8c01b9fcd4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
