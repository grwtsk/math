# sharp_extra_of_kernel_retraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:096c9780-88d5-2b23-d6d3-212384e7a761",
  "kind": "theorem",
  "lexical_name": "sharp_extra_of_kernel_retraction",
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
  "slug": "sharp-extra-of-kernel-retraction--51d36921572faadfe366fa01",
  "source": {
    "blob": "b0c521559de60eb9a85b038b1a2407e4ee65d6ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/Logic/InformationLoss/KernelRetractionSharpness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d36921572faadfe366fa013849a10269005b7ed0f987b310e7b34994dfbd2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionSharpness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:096c9780-88d5-2b23-d6d3-212384e7a761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharp_extra_of_kernel_retraction
    (P : V →ₗ[K] Y)
    (A : V →ₗ[K] P.ker)
    (hrestrict : ∀ x : P.ker, A x.1 = x) :
    Function.Injective (pairedLinearObservation P A) := by
  apply (pairedLinear_injective_iff_common_kernel_zero P A).2
  intro h hp ha
  have hx : A (⟨h, hp⟩ : P.ker).1 = (⟨h, hp⟩ : P.ker) :=
    hrestrict ⟨h, hp⟩
  have hz : (⟨h, hp⟩ : P.ker) = 0 := by
    calc
      (⟨h, hp⟩ : P.ker) = A h := hx.symm
      _ = 0 := ha
  exact congrArg Subtype.val hz

/-- A supplied kernel retraction makes the restricted measurement
surjective onto its target; no missing kernel coordinate remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionSharpness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/InformationLoss/KernelRetractionSharpness.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c521559de60eb9a85b038b1a2407e4ee65d6ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
