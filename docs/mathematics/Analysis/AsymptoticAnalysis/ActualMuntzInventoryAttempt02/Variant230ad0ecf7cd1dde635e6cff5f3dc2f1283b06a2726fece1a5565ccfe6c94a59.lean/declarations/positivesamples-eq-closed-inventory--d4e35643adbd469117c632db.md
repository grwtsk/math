# positiveSamples_eq_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:756f4c30-5c97-cd19-9763-9f34721a9871",
  "kind": "theorem",
  "lexical_name": "positiveSamples_eq_closed_inventory",
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
  "slug": "positivesamples-eq-closed-inventory--d4e35643adbd469117c632db",
  "source": {
    "blob": "b748c391fba2711e8f8a70ccb0c021ee840efb0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 62,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e35643adbd469117c632db69464e3083868ce30b8c693b1e2a4717d745904a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:756f4c30-5c97-cd19-9763-9f34721a9871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveSamples_eq_closed_inventory {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    positiveSamples A x =
      ∑ n ∈ Icc 1 (upperInventory A x), actualLogSource A ((n : ℝ)*x) := by
  rw [positiveSamples_eq_allSamples hA hx,allSamples_eq_closed_inventory hA hx,
    Icc_eq_cons_Ioc (Nat.zero_le _),sum_cons]
  simp only [Nat.cast_zero,zero_mul,actualLogSource_zero_at_zero,zero_add]
  rw [← Icc_add_one_left_eq_Ioc]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b748c391fba2711e8f8a70ccb0c021ee840efb0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
