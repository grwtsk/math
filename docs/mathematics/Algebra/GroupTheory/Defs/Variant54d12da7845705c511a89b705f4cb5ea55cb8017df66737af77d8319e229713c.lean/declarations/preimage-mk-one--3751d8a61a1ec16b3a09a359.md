# preimage_mk_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08d06c5e363c72fc675c9127cff07851199ae84e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7fec9fa-9f17-ba84-881d-c1b307a8250c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f8472bb-d82b-d4e3-6291-0f13cb1437a5",
  "kind": "theorem",
  "lexical_name": "preimage_mk_one",
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
  "slug": "preimage-mk-one--3751d8a61a1ec16b3a09a359",
  "source": {
    "blob": "08d06c5e363c72fc675c9127cff07851199ae84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 248,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3751d8a61a1ec16b3a09a35965db8d0a6779eac820a325952f82ee34f1b40185",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f8472bb-d82b-d4e3-6291-0f13cb1437a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_mk_one (N : Subgroup α) :
    mk ⁻¹' {(mk : α → α ⧸ N) 1} = N := by
  rw [← image_singleton, preimage_image_mk_eq_mul]
  simp

end QuotientGroup

@[deprecated (since := "2026-07-12")]
alias QuotientAddGroup.mk_out_eq_mul := QuotientAddGroup.mk_out_eq_add

namespace Subgroup

open QuotientGroup

variable [Group α] {s : Subgroup α}

variable {t : Subgroup α}

/-- If two subgroups `M` and `N` of `G` are equal, their quotients are in bijection. -/
@[to_additive
/-- If two subgroups `M` and `N` of `G` are equal, their quotients are in bijection. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d06c5e363c72fc675c9127cff07851199ae84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
