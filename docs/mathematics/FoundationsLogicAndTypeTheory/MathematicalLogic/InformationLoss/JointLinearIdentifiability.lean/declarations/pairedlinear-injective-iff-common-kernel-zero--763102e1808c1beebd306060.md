# pairedLinear_injective_iff_common_kernel_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:685eaa3c-e0f7-c462-eefc-657b8216d8e8",
  "kind": "theorem",
  "lexical_name": "pairedLinear_injective_iff_common_kernel_zero",
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
  "slug": "pairedlinear-injective-iff-common-kernel-zero--763102e1808c1beebd306060",
  "source": {
    "blob": "5d1540260dcf60e40dbee26cfd70357551bdaf86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 28,
    "path": "GRWTSK/Logic/InformationLoss/JointLinearIdentifiability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763102e1808c1beebd306060ec2c378f17091880ae521dc8186147b26ee830ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/JointLinearIdentifiability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:685eaa3c-e0f7-c462-eefc-657b8216d8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedLinear_injective_iff_common_kernel_zero
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) :
    Function.Injective (pairedLinearObservation P A) ↔
      ∀ h : V, P h = 0 → A h = 0 → h = 0 := by
  constructor
  · intro hinj h hp ha
    apply hinj
    simp [pairedLinearObservation, hp, ha]
  · intro hkernel x y hpair
    have hp : P x = P y := congrArg Prod.fst hpair
    have ha : A x = A y := congrArg Prod.snd hpair
    have hP : P (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact hp
    have hA : A (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact ha
    exact sub_eq_zero.mp (hkernel (x - y) hP hA)

/-- A jointly invisible nonzero direction certifies noninjectivity,
irrespective of how much redundancy is present in either observation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/JointLinearIdentifiability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/InformationLoss/JointLinearIdentifiability.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1540260dcf60e40dbee26cfd70357551bdaf86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
