# preimage_mk_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa1fca91-8337-f215-d36b-ccc439a39286",
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
  "slug": "preimage-mk-one--15e50417726dc2e9bd1f7ada",
  "source": {
    "blob": "24bf9661e1345f493f0ebc73f25c2788755cd269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 256,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e50417726dc2e9bd1f7ada188882fc43383fb329deb706332e307ff0bc94b3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa1fca91-8337-f215-d36b-ccc439a39286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–276.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24bf9661e1345f493f0ebc73f25c2788755cd269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
