# _root_.Subgroup.isPerfect_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb2adb059bdae6993988aaa55ad26ca32ed6cb8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd6ec39e-4b5c-6206-a423-805f16b40d66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01059d11-1707-f066-ef3f-172f1d20bf57",
  "kind": "lemma",
  "lexical_name": "_root_.Subgroup.isPerfect_iff",
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
  "slug": "root-subgroup-isperfect-iff--e5562e4525ceac8cf62048f4",
  "source": {
    "blob": "fb2adb059bdae6993988aaa55ad26ca32ed6cb8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 50,
    "path": "GRWTSK/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5562e4525ceac8cf62048f47cbb804aba0a3f4591c0740ebb8bf3fff7eac783",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01059d11-1707-f066-ef3f-172f1d20bf57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Subgroup.isPerfect_iff : IsPerfect H ↔ ⁅H, H⁆ = H := by
  rw [Group.isPerfect_def, ← map_subtype_inj,
    map_subtype_commutator, Subgroup.map_top, range_subtype]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2adb059bdae6993988aaa55ad26ca32ed6cb8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
