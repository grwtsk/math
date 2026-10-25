# filter_ne_fill

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2f42636-414a-a914-7b2d-de9b99e8fb25",
  "kind": "theorem",
  "lexical_name": "filter_ne_fill",
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
  "slug": "filter-ne-fill--6cc8ae7f8bd12a30b9a09a1f",
  "source": {
    "blob": "beee8761f665607d6fe23ea9f71e38f4b32f46b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 582,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cc8ae7f8bd12a30b9a09a1f957ece3c1ea7bdb973023f3b07129be9398396fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2f42636-414a-a914-7b2d-de9b99e8fb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_ne_fill [DecidableEq α] (a : α) (m : Σi : Fin (n + 1), Sym α (n - i)) (h : a ∉ m.2) :
    (m.2.fill a m.1).filterNe a = m :=
  sigma_sub_ext
    (by
      rw [filterNe, ← val_eq_coe, Subtype.coe_mk, val_eq_coe, coe_fill]
      rw [filter_add, filter_eq_self.2, add_right_eq_self, eq_zero_iff_forall_not_mem]
      · intro b hb
        rw [mem_filter, Sym.mem_coe, mem_replicate] at hb
        exact hb.2 hb.1.2.symm
      · exact fun a ha ha' => h <| ha'.symm ▸ ha)
#align sym.filter_ne_fill Sym.filter_ne_fill

end Sym

section Equiv

/-! ### Combinatorial equivalences -/


variable {α : Type*} {n : ℕ}

open Sym

namespace SymOptionSuccEquiv

/-- Function from the symmetric product over `Option` splitting on whether or not
it contains a `none`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beee8761f665607d6fe23ea9f71e38f4b32f46b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
