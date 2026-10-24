# full_cycle_type_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:522bfc47-ef1f-c854-153f-5740ab33431a",
  "kind": "theorem",
  "lexical_name": "full_cycle_type_sum",
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
  "slug": "full-cycle-type-sum--2c1bd9d951c3ac3f075443d3",
  "source": {
    "blob": "6ce4aae81e6024b1cce1f43d52fa1ba6693d445c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1bd9d951c3ac3f075443d3181ad6185b97327ed7ff3f348c7777c6c49d13f3",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:522bfc47-ef1f-c854-153f-5740ab33431a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_cycle_type_sum {α : Type*} [Fintype α] [DecidableEq α] (σ : Perm α) :
    (fullCycleType σ).sum = Fintype.card α := by
  simp only [fullCycleType, Multiset.sum_add, Perm.sum_cycleType, Multiset.sum_replicate,
    smul_eq_mul, mul_one]
  exact Nat.add_sub_of_le (Finset.card_le_univ σ.support)

/-- Conditional cycle interpretation. The correspondence is a genuine additional
proof field whose algebraic hypotheses must be discharged by its constructor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce4aae81e6024b1cce1f43d52fa1ba6693d445c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
