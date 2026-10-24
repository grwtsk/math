# C_half_mul_two_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aee0c850d5b64f09725bda3c041300767deefc52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:932c6f38-b80d-c0b2-2de5-028da128b2ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0ba8579-fc16-66b0-44df-3de914f0190b",
  "kind": "theorem",
  "lexical_name": "C_half_mul_two_eq_one",
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
  "slug": "c-half-mul-two-eq-one--7a4368cb544971177e1e1e52",
  "source": {
    "blob": "aee0c850d5b64f09725bda3c041300767deefc52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 135,
    "path": "GRWTSK/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a4368cb544971177e1e1e520d379a7f039b8b58d2d755e3661a3be3676edfd5",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ba8579-fc16-66b0-44df-3de914f0190b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem C_half_mul_two_eq_one [Invertible (2 : R)] : C (⅟ 2 : R) * 2 = 1 := by
  rw [mul_comm, two_mul_C_half_eq_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee0c850d5b64f09725bda3c041300767deefc52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
