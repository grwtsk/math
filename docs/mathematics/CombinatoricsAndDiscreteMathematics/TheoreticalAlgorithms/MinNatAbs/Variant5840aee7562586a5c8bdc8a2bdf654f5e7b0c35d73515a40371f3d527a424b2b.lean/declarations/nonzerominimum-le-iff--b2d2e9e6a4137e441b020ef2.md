# nonzeroMinimum_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1112cbc8-f863-0c9d-eb57-730d36e62f07",
  "kind": "theorem",
  "lexical_name": "nonzeroMinimum_le_iff",
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
  "slug": "nonzerominimum-le-iff--b2d2e9e6a4137e441b020ef2",
  "source": {
    "blob": "4f5d9e6a4323c24885a9fd75503a07ab1ad7d1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2d2e9e6a4137e441b020ef2ca2e43a3009cb82c541a95f9984474f9ef18e85d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1112cbc8-f863-0c9d-eb57-730d36e62f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzeroMinimum_le_iff {xs : List Nat} {y : Nat} :
    nonzeroMinimum xs ≤ y ↔ nonzeroMinimum xs = 0 ∨ ∃ x ∈ xs, x ≤ y ∧ x ≠ 0 := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rw [Classical.or_iff_not_imp_right]
    simp only [ne_eq, not_exists, not_and, Classical.not_not, nonzeroMinimum_eq_zero_iff]
    intro w
    apply nonzeroMinimum_eq_zero_iff.mp
    if p : nonzeroMinimum xs = 0 then
      exact p
    else
      exact w _ (nonzeroMinimum_mem p) h
  · match h with
    | .inl h => simp [h]
    | .inr ⟨x, m, le, ne⟩ => exact Nat.le_trans (nonzeroMinimum_le m ne) le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f5d9e6a4323c24885a9fd75503a07ab1ad7d1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
