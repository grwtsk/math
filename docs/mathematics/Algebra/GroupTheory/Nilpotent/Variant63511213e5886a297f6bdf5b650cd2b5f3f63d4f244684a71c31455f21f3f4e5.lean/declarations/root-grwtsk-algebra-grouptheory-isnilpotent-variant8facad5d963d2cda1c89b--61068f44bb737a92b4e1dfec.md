# _root_.GRWTSK.Algebra.GroupTheory.IsNilpotent.Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.AddSubgroup.upperCentralSeries_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c05d1d9-7fff-7db6-003a-05d3c1b4ccd3",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.IsNilpotent.Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.AddSubgroup.upperCentralSeries_one",
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
  "slug": "root-grwtsk-algebra-grouptheory-isnilpotent-variant8facad5d963d2cda1c89b--61068f44bb737a92b4e1dfec",
  "source": {
    "blob": "30c59694ffb89b9851d8498640ef653bd9c59778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 209,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61068f44bb737a92b4e1dfecb7346fb110cef737c884dd1d9b441e5d4a7a8b3e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c05d1d9-7fff-7db6-003a-05d3c1b4ccd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.IsNilpotent.Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.AddSubgroup.upperCentralSeries_one (G : Type*) [AddGroup G] :
    AddSubgroup.upperCentralSeries G 1 = AddSubgroup.center G := by
  ext
  simp only [AddSubgroup.upperCentralSeries, AddSubgroup.upperCentralSeriesAux,
    AddSubgroup.upperCentralSeriesStep, AddSubgroup.mem_bot, AddSubgroup.mem_mk,
    AddSubmonoid.mem_mk, AddSubsemigroup.mem_mk, Set.mem_ofPred_eq, AddSubgroup.mem_center_iff]
  exact forall_congr' fun y => by
    rw [addCommutatorElement_def, add_neg_eq_zero, add_neg_eq_iff_eq_add, eq_comm]

attribute [to_additive existing (attr := simp) AddSubgroup.upperCentralSeries_one]
  upperCentralSeries_one

variable {G}

/-- The `n+1`st term of the upper central series `H i` has underlying set equal to the `x` such
that `⁅x,G⁆ ⊆ H n`. -/
@[to_additive /-- The `n+1`st term of the upper central series `H i` has underlying set equal to
the `x` such that `⁅x,G⁆ ⊆ H n`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30c59694ffb89b9851d8498640ef653bd9c59778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
