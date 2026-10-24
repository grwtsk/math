# coe_derivedSeries_eq_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cae02262568d84e33787eef50e909c5e51929a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:378ccba3-0440-4792-4ffa-9fae7e5558be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cf09269-c1d1-dc50-6450-1549afaa4ae4",
  "kind": "theorem",
  "lexical_name": "coe_derivedSeries_eq_int",
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
  "slug": "coe-derivedseries-eq-int--4d8c3e5de3ea01f946fdc328",
  "source": {
    "blob": "1cae02262568d84e33787eef50e909c5e51929a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 227,
    "path": "GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d8c3e5de3ea01f946fdc3284f403b2f0980fbe0b14f093f70d785b3222393b0",
  "verification": {
    "reference": "docs/verification/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cf09269-c1d1-dc50-6450-1549afaa4ae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_derivedSeries_eq_int (k : ℕ) :
    (derivedSeries R L k : Set L) = (derivedSeries ℤ L k : Set L) := by
  rw [← LieSubmodule.coe_toSubmodule, ← LieSubmodule.coe_toSubmodule, derivedSeries_def,
    derivedSeries_def]
  induction k with
  | zero => rfl
  | succ k ih =>
    rw [derivedSeriesOfIdeal_succ, derivedSeriesOfIdeal_succ]
    rw [LieSubmodule.lieIdeal_oper_eq_linear_span', LieSubmodule.lieIdeal_oper_eq_linear_span']
    rw [Set.ext_iff] at ih
    simp only [SetLike.mem_coe, LieSubmodule.mem_toSubmodule] at ih
    simp only [Subtype.exists, exists_prop, ih]
    apply le_antisymm
    · exact coe_derivedSeries_eq_int_aux _ _ L k ih
    · simp only [← ih]
      apply coe_derivedSeries_eq_int_aux _ _ L k
      simp [ih]

end LieIdeal

namespace LieAlgebra

/-- A Lie algebra is solvable if its derived series reaches 0 (in a finite number of steps). -/
@[mk_iff isSolvable_iff_int]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cae02262568d84e33787eef50e909c5e51929a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
