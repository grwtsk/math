# eq_zero_iff_eq_zero_of_mem_box

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3b0eb0d-377d-0284-9691-ccff6251779b",
  "kind": "lemma",
  "lexical_name": "eq_zero_iff_eq_zero_of_mem_box",
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
  "slug": "eq-zero-iff-eq-zero-of-mem-box--f059d07e06f1e3dc947f2ab6",
  "source": {
    "blob": "4fd0dcdffa29711211bb5544b25401e98f9f5577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f059d07e06f1e3dc947f2ab6599ee805e98d6a811349a0a4cc9cf131387aa092",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3b0eb0d-377d-0284-9691-ccff6251779b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_iff_eq_zero_of_mem_box  {x : α} (hx : x ∈ box n) : x = 0 ↔ n = 0 :=
  ⟨zero_mem_box.mp ∘ (· ▸ hx), fun hn ↦ by rwa [hn, box_zero, mem_singleton] at hx⟩

end Finset

open Finset

/-! ### Product of locally finite ordered rings -/

namespace Prod
variable {α β : Type*} [Ring α] [PartialOrder α] [IsOrderedRing α]
  [Ring β] [PartialOrder β] [IsOrderedRing β] [LocallyFiniteOrder α] [LocallyFiniteOrder β]
  [DecidableEq α] [DecidableEq β] [DecidableLE (α × β)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fd0dcdffa29711211bb5544b25401e98f9f5577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
