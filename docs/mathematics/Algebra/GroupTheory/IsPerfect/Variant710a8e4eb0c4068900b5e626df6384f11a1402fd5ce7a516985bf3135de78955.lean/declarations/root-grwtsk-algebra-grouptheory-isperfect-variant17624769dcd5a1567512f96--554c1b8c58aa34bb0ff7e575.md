# _root_.GRWTSK.Algebra.GroupTheory.IsPerfect.Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.Subgroup.isPerfect_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed907b6b-5989-6466-1faa-e107df9d2ad0",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.IsPerfect.Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.Subgroup.isPerfect_iff",
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
  "slug": "root-grwtsk-algebra-grouptheory-isperfect-variant17624769dcd5a1567512f96--554c1b8c58aa34bb0ff7e575",
  "source": {
    "blob": "2759eb5e52be970f99184f3244704b4fb57542db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 58,
    "path": "GRWTSK/Algebra/GroupTheory/IsPerfect/Variant710a8e4eb0c4068900b5e626df6384f11a1402fd5ce7a516985bf3135de78955.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554c1b8c58aa34bb0ff7e57509f5382fde66b8c61335886db9385d8446caa1ea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsPerfect/Variant710a8e4eb0c4068900b5e626df6384f11a1402fd5ce7a516985bf3135de78955.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed907b6b-5989-6466-1faa-e107df9d2ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.GroupTheory.IsPerfect.Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.Subgroup.isPerfect_iff : IsPerfect H ↔ ⁅H, H⁆ = H := by
  rw [Group.isPerfect_def, ← map_subtype_inj,
    map_subtype_commutator, Subgroup.map_top, range_subtype]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsPerfect/Variant710a8e4eb0c4068900b5e626df6384f11a1402fd5ce7a516985bf3135de78955.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsPerfect/Variant710a8e4eb0c4068900b5e626df6384f11a1402fd5ce7a516985bf3135de78955.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2759eb5e52be970f99184f3244704b4fb57542db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
