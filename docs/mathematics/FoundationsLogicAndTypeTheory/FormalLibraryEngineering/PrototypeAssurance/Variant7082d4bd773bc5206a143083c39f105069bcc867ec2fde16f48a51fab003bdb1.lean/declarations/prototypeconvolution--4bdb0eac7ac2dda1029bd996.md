# prototypeConvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e55b35baa8de0363a7c86e65e36f92124425ade3f4c221ec26e032ceb3d2e91",
  "kind": "def",
  "lexical_name": "prototypeConvolution",
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
  "slug": "prototypeconvolution--4bdb0eac7ac2dda1029bd996",
  "source": {
    "blob": "147f4c704a9e2444686f12c1241d3df784bea529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrototypeAssurance/Variant7082d4bd773bc5206a143083c39f105069bcc867ec2fde16f48a51fab003bdb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bdb0eac7ac2dda1029bd99631c4161f36cf89e7204fcba13c2500a2f2c4a52f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrototypeAssurance/Variant7082d4bd773bc5206a143083c39f105069bcc867ec2fde16f48a51fab003bdb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e55b35baa8de0363a7c86e65e36f92124425ade3f4c221ec26e032ceb3d2e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeConvolution :
    FiniteModelConvolution PrototypeModel PrototypeEdge Unit where
  activeModels := Finset.univ
  neighborModels := fun _ => Finset.univ
  neighborsActive := by intro _; exact Finset.Subset.rfl
  localContribution := fun model _ _ => (prototypeRank model : ℚ)
  weight := fun _ _ _ => 1
  weightNonnegative := by intros; norm_num
  positiveDenominator := by
    intro point state
    simp
    norm_num [show Fintype.card PrototypeModel = 5 by decide]
  compatible := fun _ _ => True
  incompatibilityRecorded := by
    intro point left right _ _ incompatible
    exact False.elim (incompatible trivial)
  pins :=
    { activeRegion := ⟨"prototype:active-region:five-model-v1"⟩
      selectedVersions := ⟨"prototype:selected-versions:v1"⟩
      seed := ⟨"prototype:convolution-seed:v1"⟩
      policy := ⟨"prototype:convolution-policy:v1"⟩ }
  weightDependencies :=
    { carrierPoint := true
      semanticState := false
      modelVersion := true
      translationDefect := false
      time := false
      neuralProposal := false
      policy := true }
  inputApproximation := .exact
  outputApproximation := .exact
  approximationPreserved := rfl
  sourceAuthority := .certifiedSource
  outputAuthority := .certifiedSource
  authorityPreserved := rfl

/-- The concrete normalizing denominator is exactly the five-model count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrototypeAssurance/Variant7082d4bd773bc5206a143083c39f105069bcc867ec2fde16f48a51fab003bdb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrototypeAssurance/Variant7082d4bd773bc5206a143083c39f105069bcc867ec2fde16f48a51fab003bdb1.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147f4c704a9e2444686f12c1241d3df784bea529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
