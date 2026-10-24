# forwardStepPermOfFinite_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94f8d7bd-7b2d-7ca1-c69a-f6c0a5f27b20",
  "kind": "theorem",
  "lexical_name": "forwardStepPermOfFinite_mk",
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
  "slug": "forwardsteppermoffinite-mk--ee7586c26b4243a065e7cf3e",
  "source": {
    "blob": "49b1b9787a65cd1b89961d15cf3dcdce4232cc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/FiniteStateCausalPermutation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee7586c26b4243a065e7cf3eb1bb79b2113970e3e17982cf1ed92ced82d6a017",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/FiniteStateCausalPermutation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94f8d7bd-7b2d-7ca1-c69a-f6c0a5f27b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardStepPermOfFinite_mk
    (G : ReversibleSystem State Resolution)
    [Finite State]
    (x : State) :
    G.forwardStepPermOfFinite (Quotient.mk G.forwardSetoid x) =
      Quotient.mk G.forwardSetoid (G.step x) := by
  apply G.forwardStepPermOfPowEqOne_mk

end ReversibleSystem

-- Stable names requested by the public API.
export ReversibleSystem
  (BilateralCausalState
   bilateralStepPerm
   bilateralObserve
   forward_eq_bilateral_of_pow_eq_one
   forwardCausalStateEquivBilateralOfPowEqOne
   forwardStepPermOfPowEqOne
   forwardCausalStateEquivBilateralOfFinite
   forwardStepPermOfFinite)

end ReversibleCausal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/FiniteStateCausalPermutation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/FiniteStateCausalPermutation.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b1b9787a65cd1b89961d15cf3dcdce4232cc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
