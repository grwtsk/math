# positiveUnitCoefficient_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5443c091-daf5-8de7-3b7e-71ba5b382b21",
  "kind": "theorem",
  "lexical_name": "positiveUnitCoefficient_sum",
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
  "slug": "positiveunitcoefficient-sum--98b2389221673aea2822b97b",
  "source": {
    "blob": "123b62375f79555934ac2133473445eb02cba697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b2389221673aea2822b97b43329b68fe55c52f23b0533dcb3df2f90cd9b536",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5443c091-daf5-8de7-3b7e-71ba5b382b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem positiveUnitCoefficient_sum (n : ℕ) :
    (∑ k ∈ Finset.Icc 0 n, positiveUnitCoefficient k) = (n : ℝ) := by
  rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  simp only [positiveUnitCoefficient, if_pos rfl, zero_add]
  have he : (∑ k ∈ Finset.Ioc 0 n, if k = 0 then (0 : ℝ) else 1) =
      ∑ _k ∈ Finset.Ioc 0 n, (1 : ℝ) := by
    apply Finset.sum_congr rfl
    intro k hk
    simp [ne_of_gt (Finset.mem_Ioc.mp hk).1]
  rw [he]
  simp

/-- Ordinary log smoothness is used only on the true closed interval from one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `123b62375f79555934ac2133473445eb02cba697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
