# zpow_eq_zpow_on_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1124f447-0b78-9bd4-f266-ba31558dd3fa",
  "kind": "theorem",
  "lexical_name": "zpow_eq_zpow_on_iff",
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
  "slug": "zpow-eq-zpow-on-iff--eb125802e687ee779e907611",
  "source": {
    "blob": "22bcdd88db207682520dfc42779dcca1dbf6b45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 342,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb125802e687ee779e9076111f9dac02a8f257ae727b38f82e86af59a4cccbd3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1124f447-0b78-9bd4-f266-ba31558dd3fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow_eq_zpow_on_iff [DecidableEq α] [Fintype α]
    (g : Perm α) {m n : ℤ} {x : α} (hx : g x ≠ x) :
    (g ^ m) x = (g ^ n) x ↔ m % #(g.cycleOf x).support = n % #(g.cycleOf x).support := by
  rw [Int.emod_eq_emod_iff_emod_sub_eq_zero]
  conv_lhs => rw [← Int.sub_add_cancel m n, Int.add_comm, zpow_add]
  simp only [coe_mul, Function.comp_apply, EmbeddingLike.apply_eq_iff_eq]
  rw [← Int.dvd_iff_emod_eq_zero]
  rw [← cycleOf_zpow_apply_self g x, cycle_zpow_mem_support_iff]
  · rw [← Int.dvd_iff_emod_eq_zero]
  · exact isCycle_cycleOf g hx
  · simp only [cycleOf_apply_self]; exact hx

end CycleOf


/-!
### `cycleFactors`
-/

section cycleFactors

open scoped List in
/-- Given a list `l : List α` and a permutation `f : Perm α` whose nonfixed points are all in `l`,
  recursively factors `f` into cycles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22bcdd88db207682520dfc42779dcca1dbf6b45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
