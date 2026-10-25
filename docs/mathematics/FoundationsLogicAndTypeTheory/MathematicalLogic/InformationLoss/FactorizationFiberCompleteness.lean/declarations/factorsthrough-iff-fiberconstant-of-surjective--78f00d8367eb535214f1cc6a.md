# factorsThrough_iff_fiberConstant_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ae75e8a-85b7-5481-2c2d-67230a6aab78",
  "kind": "theorem",
  "lexical_name": "factorsThrough_iff_fiberConstant_of_surjective",
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
  "slug": "factorsthrough-iff-fiberconstant-of-surjective--78f00d8367eb535214f1cc6a",
  "source": {
    "blob": "384f7ead3e902659ba1f592bb3fa2a8be9278f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/Logic/InformationLoss/FactorizationFiberCompleteness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78f00d8367eb535214f1cc6a257b50318a2abcbf9d617f6f2e36bd2fb9c27040",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiberCompleteness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ae75e8a-85b7-5481-2c2d-67230a6aab78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorsThrough_iff_fiberConstant_of_surjective
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (hsurj : Function.Surjective profile) :
    FactorsThrough profile readout ↔
      ∀ x y : X, profile x = profile y → readout x = readout y := by
  constructor
  · intro hfactor x y hxy
    exact eq_of_factorsThrough profile readout hfactor hxy
  · intro hconstant
    classical
    let decode : Y → Z := fun y => readout (Classical.choose (hsurj y))
    refine ⟨decode, ?_⟩
    funext x
    change readout x = readout (Classical.choose (hsurj (profile x)))
    apply hconstant
    exact (Classical.choose_spec (hsurj (profile x))).symm

/-- Restrict the observable codomain to values actually attained by it.
The original source coordinates and all original fibers are preserved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiberCompleteness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/InformationLoss/FactorizationFiberCompleteness.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `384f7ead3e902659ba1f592bb3fa2a8be9278f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
