# cfc_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e4a74d713491f81bc866ca32ac7797ec7b085e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 753,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afb5643e-595b-0abc-b67a-a2f9c3567b42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:706e119a-f086-d872-f8ee-131226df7bc8",
  "kind": "lemma",
  "lexical_name": "cfc_inv",
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
  "slug": "cfc-inv--aff46cc1fa89cb157ba237be",
  "source": {
    "blob": "1e4a74d713491f81bc866ca32ac7797ec7b085e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 753,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff46cc1fa89cb157ba237be5248d1d7d859632e95f784991b375513d4f0fdc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:706e119a-f086-d872-f8ee-131226df7bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_inv (hf' : ∀ x ∈ spectrum R a, f x ≠ 0)
    (hf : ContinuousOn f (spectrum R a) := by cfc_cont_tac) (ha : p a := by cfc_tac) :
    cfc (fun x ↦ (f x) ⁻¹) a = Ring.inverse (cfc f a) := by
  rw [← val_inv_cfcUnits f a hf', ← val_cfcUnits f a hf', Ring.inverse_unit]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e4a74d713491f81bc866ca32ac7797ec7b085e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
