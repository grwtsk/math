# cfc_inv_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 798,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4a96771-5f23-fe76-338a-39db24db9644",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c92760f6-3f80-3a74-61de-8dbaa667dbf4",
  "kind": "lemma",
  "lexical_name": "cfc_inv_id",
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
  "slug": "cfc-inv-id--eb863c597b329130c96debbe",
  "source": {
    "blob": "539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 798,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb863c597b329130c96debbe1de5c7a420fc32739b4a9bb9cbb97a693b51d2dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c92760f6-3f80-3a74-61de-8dbaa667dbf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_inv_id (a : Aˣ) (ha : p a := by cfc_tac) :
    cfc (fun x ↦ x⁻¹ : R → R) (a : A) = a⁻¹ := by
  rw [← Ring.inverse_unit]
  convert! cfc_inv (id : R → R) (a : A) ?_
  · exact (cfc_id R (a : A)).symm
  · rintro x hx rfl
    exact spectrum.zero_notMem R a.isUnit hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
