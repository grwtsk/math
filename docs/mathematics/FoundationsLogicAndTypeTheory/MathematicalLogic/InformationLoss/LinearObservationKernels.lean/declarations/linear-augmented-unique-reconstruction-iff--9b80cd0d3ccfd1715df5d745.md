# linear_augmented_unique_reconstruction_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76be5fb2-6be7-54d0-928d-8f760aa0964b",
  "kind": "theorem",
  "lexical_name": "linear_augmented_unique_reconstruction_iff",
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
  "slug": "linear-augmented-unique-reconstruction-iff--9b80cd0d3ccfd1715df5d745",
  "source": {
    "blob": "89ccada5df2c052fbc97522159eabfa4ce2aae7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 63,
    "path": "GRWTSK/Logic/InformationLoss/LinearObservationKernels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b80cd0d3ccfd1715df5d7457ae9b96b91d3fd3929bd98970eadedea20ba6d78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76be5fb2-6be7-54d0-928d-8f760aa0964b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_augmented_unique_reconstruction_iff
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) (R : V →ₗ[K] Z) :
    (∃! decode : Set.range (pairedLinearObservation P A) → Z,
       (fun x : V => R x) =
         decode ∘ observedProfile (pairedLinearObservation P A)) ↔
      (∀ h : V, P h = 0 → A h = 0 → R h = 0) := by
  rw [existsUnique_decoder_observedProfile_iff]
  constructor
  · intro hc h hp ha
    have hz : pairedLinearObservation P A h =
        pairedLinearObservation P A 0 := by
      simp [pairedLinearObservation, hp, ha]
    have hh := hc h 0 hz
    simpa using hh
  · intro hk x y hpair
    have hp : P x = P y := congrArg Prod.fst hpair
    have ha : A x = A y := congrArg Prod.snd hpair
    have hP : P (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact hp
    have hA : A (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact ha
    have hR := hk (x - y) hP hA
    rw [map_sub, sub_eq_zero] at hR
    exact hR

end GRWTSK.Logic.InformationLoss
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/InformationLoss/LinearObservationKernels.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ccada5df2c052fbc97522159eabfa4ce2aae7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
