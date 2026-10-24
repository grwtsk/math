# sin_int_mul_two_pi_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5eff052333541ad7bcf8a1e19037cac3d154ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1059,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0deecc1d-e142-52b0-0bed-1834d141247b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7ee3cc6-47a8-7e92-ac25-4a5e8e80503d",
  "kind": "theorem",
  "lexical_name": "sin_int_mul_two_pi_sub",
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
  "slug": "sin-int-mul-two-pi-sub--c813c878192478e2ef599d48",
  "source": {
    "blob": "a5eff052333541ad7bcf8a1e19037cac3d154ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1061,
    "line": 1059,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c813c878192478e2ef599d4838aa37003641235b27854ce4815293b3e3cd1b71",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7ee3cc6-47a8-7e92-ac25-4a5e8e80503d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1059–1061.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_int_mul_two_pi_sub (x : ℂ) (n : ℤ) : sin (n * (2 * π) - x) = -sin x :=
  sin_neg x ▸ sin_periodic.int_mul_sub_eq n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean#L1059).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5eff052333541ad7bcf8a1e19037cac3d154ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
