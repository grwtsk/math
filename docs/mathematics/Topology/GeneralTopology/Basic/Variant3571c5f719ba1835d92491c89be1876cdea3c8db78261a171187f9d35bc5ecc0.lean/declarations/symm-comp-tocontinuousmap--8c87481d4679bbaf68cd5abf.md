# symm_comp_toContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03f388dad1e03416dbd04aff5a7adb3c06eaf705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64bc4302-98d2-90f7-c316-1f865104792c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5525efd0-9f0f-d60c-560f-483bcaf9a076",
  "kind": "theorem",
  "lexical_name": "symm_comp_toContinuousMap",
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
  "slug": "symm-comp-tocontinuousmap--8c87481d4679bbaf68cd5abf",
  "source": {
    "blob": "03f388dad1e03416dbd04aff5a7adb3c06eaf705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 448,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c87481d4679bbaf68cd5abf9629971c54ce616c933281f69e76780540c5a851",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5525efd0-9f0f-d60c-560f-483bcaf9a076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_comp_toContinuousMap :
    (f.symm : C(β, α)).comp (f : C(α, β)) = ContinuousMap.id α := by
  rw [← coe_trans, self_trans_symm, coe_refl]

/-- Right inverse to a continuous map from a homeomorphism, mirroring `Equiv.self_comp_symm`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f388dad1e03416dbd04aff5a7adb3c06eaf705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
