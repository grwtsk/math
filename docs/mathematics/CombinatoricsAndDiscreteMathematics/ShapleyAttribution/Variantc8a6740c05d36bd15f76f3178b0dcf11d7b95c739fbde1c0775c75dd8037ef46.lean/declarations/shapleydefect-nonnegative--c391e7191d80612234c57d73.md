# shapleyDefect_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8194d2de0c21e5ed4a6e552f6d336b399bb9cf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7a9b0b6-9e2c-043f-3404-e18ee42aa179",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9f08c5d-8f5b-bde9-c88e-0ce7ca4bc2bc",
  "kind": "theorem",
  "lexical_name": "shapleyDefect_nonnegative",
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
  "slug": "shapleydefect-nonnegative--c391e7191d80612234c57d73",
  "source": {
    "blob": "c8194d2de0c21e5ed4a6e552f6d336b399bb9cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c391e7191d80612234c57d7365cba716597417816b9c80e07398a3c505791f75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9f08c5d-8f5b-bde9-c88e-0ce7ca4bc2bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shapleyDefect_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (primeSet : Finset Prime)
    (weights :
      ShapleyWeightCertificate primeSet)
    (prime : Prime)
    (prime_mem : prime ∈ primeSet) :
    model.Nonnegative
      (shapleyDefect capacity primeSet prime) := by
  unfold shapleyDefect
  apply operatorFinsetSum_nonnegative
    model
    ((primeSet.erase prime).powerset)
  intro predecessors predecessorsMem
  apply model.rational_smul_nonnegative
  · exact weights.weight_nonnegative
      prime prime_mem predecessors predecessorsMem
  · exact increment_nonnegative
      capacity predecessors prime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8194d2de0c21e5ed4a6e552f6d336b399bb9cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
