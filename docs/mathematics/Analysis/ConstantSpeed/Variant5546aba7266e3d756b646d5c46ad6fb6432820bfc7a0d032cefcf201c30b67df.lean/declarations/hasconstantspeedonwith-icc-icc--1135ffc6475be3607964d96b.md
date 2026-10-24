# HasConstantSpeedOnWith.Icc_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13123f24f97dc728b10d3716fcab6867c3f60604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84a60aff-2815-b45c-8571-ae771f767d77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45056709-054f-b333-970d-699300d78d24",
  "kind": "theorem",
  "lexical_name": "HasConstantSpeedOnWith.Icc_Icc",
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
  "slug": "hasconstantspeedonwith-icc-icc--1135ffc6475be3607964d96b",
  "source": {
    "blob": "13123f24f97dc728b10d3716fcab6867c3f60604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 139,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1135ffc6475be3607964d96bcdf5e22e1c8fb082e1127e847e502cb8bf1046a2",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45056709-054f-b333-970d-699300d78d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasConstantSpeedOnWith.Icc_Icc {x y z : ℝ} (hfs : HasConstantSpeedOnWith f (Icc x y) l)
    (hft : HasConstantSpeedOnWith f (Icc y z) l) : HasConstantSpeedOnWith f (Icc x z) l := by
  rcases le_total x y with (xy | yx)
  · rcases le_total y z with (yz | zy)
    · rw [← Set.Icc_union_Icc_eq_Icc xy yz]
      exact hfs.union hft (isGreatest_Icc xy) (isLeast_Icc yz)
    · rintro u ⟨xu, uz⟩ v ⟨xv, vz⟩
      rw [Icc_inter_Icc, sup_of_le_right xu, inf_of_le_right vz, ←
        hfs ⟨xu, uz.trans zy⟩ ⟨xv, vz.trans zy⟩, Icc_inter_Icc, sup_of_le_right xu,
        inf_of_le_right (vz.trans zy)]
  · rintro u ⟨xu, uz⟩ v ⟨xv, vz⟩
    rw [Icc_inter_Icc, sup_of_le_right xu, inf_of_le_right vz, ←
      hft ⟨yx.trans xu, uz⟩ ⟨yx.trans xv, vz⟩, Icc_inter_Icc, sup_of_le_right (yx.trans xu),
      inf_of_le_right vz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13123f24f97dc728b10d3716fcab6867c3f60604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
