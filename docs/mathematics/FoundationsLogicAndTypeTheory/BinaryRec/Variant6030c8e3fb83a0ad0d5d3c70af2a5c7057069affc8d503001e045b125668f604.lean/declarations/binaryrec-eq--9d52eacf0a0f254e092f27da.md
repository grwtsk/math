# binaryRec'_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9405a0390ee025937b086d0893ec63c145df650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:993de2c5-fd3a-ed6a-645a-198e655ef79e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37019ff0-2f46-22fe-d0db-d49baa42ffb4",
  "kind": "theorem",
  "lexical_name": "binaryRec'_eq",
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
  "slug": "binaryrec-eq--9d52eacf0a0f254e092f27da",
  "source": {
    "blob": "f9405a0390ee025937b086d0893ec63c145df650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d52eacf0a0f254e092f27da534e6a004157c911a999205e463509b0db9b558b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37019ff0-2f46-22fe-d0db-d49baa42ffb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryRec'_eq {zero : motive 0}
    {bit : (b : Bool) → (n : Nat) → (n = 0 → b = true) → motive n → motive (n.bit b)}
    (b n) (h : n = 0 → b = true) :
    binaryRec' zero bit (n.bit b) = bit b n h (binaryRec' zero bit n) := by
  rw [binaryRec', binaryRec_eq _ _ (by simp), dite_eq_left h, binaryRec']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9405a0390ee025937b086d0893ec63c145df650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
