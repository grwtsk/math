# Equiv.Perm.fin_5_not_solvable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3a1fb0d-54b5-d17b-d3a4-06e6a318f1ac",
  "kind": "theorem",
  "lexical_name": "Equiv.Perm.fin_5_not_solvable",
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
  "slug": "equiv-perm-fin-5-not-solvable--1587f18f12f524a555679398",
  "source": {
    "blob": "1fc119814455e9d5098ac06dcf1da3518b256f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1587f18f12f524a55567939818d9a03b065ec730640fdb73fdb2128b50e05566",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a1fb0d-54b5-d17b-d3a4-06e6a318f1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.Perm.fin_5_not_solvable : ¬IsSolvable (Equiv.Perm (Fin 5)) := by
  let x : Equiv.Perm (Fin 5) := ⟨![1, 2, 0, 3, 4], ![2, 0, 1, 3, 4], by decide, by decide⟩
  let y : Equiv.Perm (Fin 5) := ⟨![3, 4, 2, 0, 1], ![3, 4, 2, 0, 1], by decide, by decide⟩
  let z : Equiv.Perm (Fin 5) := ⟨![0, 3, 2, 1, 4], ![0, 3, 2, 1, 4], by decide, by decide⟩
  have key : x = z * ⁅x, y * x * y⁻¹⁆ * z⁻¹ := by unfold x y z; decide
  refine not_solvable_of_mem_derivedSeries (show x ≠ 1 by decide) fun n => ?_
  induction n with
  | zero => exact mem_top x
  | succ n ih =>
    rw [key, (derivedSeries_normal _ _).mem_comm_iff, inv_mul_cancel_left]
    exact commutator_mem_commutator ih ((derivedSeries_normal _ _).conj_mem _ ih _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc119814455e9d5098ac06dcf1da3518b256f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
