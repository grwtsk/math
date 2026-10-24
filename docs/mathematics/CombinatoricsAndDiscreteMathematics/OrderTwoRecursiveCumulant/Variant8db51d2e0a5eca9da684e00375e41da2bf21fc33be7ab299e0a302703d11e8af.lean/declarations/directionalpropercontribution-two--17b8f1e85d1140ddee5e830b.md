# directionalProperContribution_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dae5eb9a-f760-e8d7-6e2d-a327561a2a3e",
  "kind": "theorem",
  "lexical_name": "directionalProperContribution_two",
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
  "slug": "directionalpropercontribution-two--17b8f1e85d1140ddee5e830b",
  "source": {
    "blob": "93942fd4446f96b782d224e3aecb35862d6f3635",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17b8f1e85d1140ddee5e830b13550588953146755856d3bf48db9cbc434178d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dae5eb9a-f760-e8d7-6e2d-a327561a2a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directionalProperContribution_two
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 2 → E) :
    directionalProperContribution
        2 (Nat.succ_pos 1) κ directions =
      κ 1 (fun _ : Fin 1 => directions 0) *
        κ 1 (fun _ : Fin 1 => directions 1) := by
  unfold directionalProperContribution properPartitionContribution
  rw [properPartitions_two_eq_singleton]
  simp only [Finset.sum_singleton]
  exact directionalPartitionWeight_bot_two κ directions

end MomentCumulant

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

open MomentCumulant

/-- The order-two proper contribution for the recursive raw family is the
product of the two verified first cumulants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93942fd4446f96b782d224e3aecb35862d6f3635` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
