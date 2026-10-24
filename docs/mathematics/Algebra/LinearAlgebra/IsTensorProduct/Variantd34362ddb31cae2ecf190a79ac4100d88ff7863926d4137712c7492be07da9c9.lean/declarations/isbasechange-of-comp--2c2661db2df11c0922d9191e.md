# IsBaseChange.of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:011563af-a9bb-829f-f02b-60c9eafab377",
  "kind": "lemma",
  "lexical_name": "IsBaseChange.of_comp",
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
  "slug": "isbasechange-of-comp--2c2661db2df11c0922d9191e",
  "source": {
    "blob": "915342d3b63e40411174a7257f149107258f9690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 563,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c2661db2df11c0922d9191e9a4d1f2c86077502f738a3ed850a703b0806fe6e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:011563af-a9bb-829f-f02b-60c9eafab377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBaseChange.of_comp {f : M →ₗ[R] N} (hf : IsBaseChange S f) {h : N →ₗ[S] O}
    (hc : IsBaseChange T ((h : N →ₗ[R] O) ∘ₗ f)) :
    IsBaseChange T h := by
  apply IsBaseChange.of_lift_unique
  intro Q _ _ _ _ r
  let : Module R Q := .restrictScalars R S Q
  have : IsScalarTower R S Q := .restrictScalars R S Q
  have : IsScalarTower R T Q := IsScalarTower.of_algebraMap_smul fun r x ↦ by
    simp [IsScalarTower.algebraMap_apply R S T]
  let r' : M →ₗ[R] Q := r ∘ₗ f
  let q : O →ₗ[T] Q := hc.lift r'
  refine ⟨q, ?_, ?_⟩
  · apply hf.algHom_ext'
    simp [r', q, LinearMap.comp_assoc, hc.lift_comp]
  · intro q' hq'
    apply hc.algHom_ext'
    apply_fun LinearMap.restrictScalars R at hq'
    rw [← LinearMap.comp_assoc]
    rw [show q'.restrictScalars R ∘ₗ h.restrictScalars R = _ from hq', hc.lift_comp]

/-- If `N` is the base change `M` to `S`, then `O` is the base change of `M` to `T` if and
only if `O` is the base change of `N` to `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915342d3b63e40411174a7257f149107258f9690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
