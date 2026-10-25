# EffectiveHaltingProofCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab78d55140d9c183ab15fff576c28917350918eb8f3051ff43ccca8188ad8d60",
  "kind": "structure",
  "lexical_name": "EffectiveHaltingProofCost",
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
  "slug": "effectivehaltingproofcost--6d46eb6471a0e93cae5c499b",
  "source": {
    "blob": "02f57db9e30061902c51cd9a73168d2cd755052f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d46eb6471a0e93cae5c499be7af0e88a7b28c771db956c98bc6e468ad0ccb20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab78d55140d9c183ab15fff576c28917350918eb8f3051ff43ccca8188ad8d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectiveHaltingProofCost (input : ℕ) where
  /-- Declared description size for each exact program. -/
  descriptionSize : Nat.Partrec.Code → ℕ
  /-- Program description size is effective. -/
  descriptionSizeComputable : Computable descriptionSize
  /-- Finite proof code acceptance. -/
  accepts : Nat.Partrec.Code × ℕ → Bool
  /-- Acceptance is a total computable finite check. -/
  acceptsComputable : Computable accepts
  /-- Declared logical proof cost. -/
  proofCost : ℕ → ℕ
  /-- Cost measurement is effective. -/
  proofCostComputable : Computable proofCost
  /-- Each accepted certificate proves the exact halting predicate. -/
  sound : ∀ program certificate, accepts (program, certificate) = true →
    ProgramHalts input program
  /-- Halting programs have a finite accepted certificate in this system. -/
  complete : ∀ program, ProgramHalts input program →
    ∃ certificate, accepts (program, certificate) = true
  /-- Explicit finite inventory of the whole proof-cost ball. -/
  costBall : ℕ → Finset ℕ
  /-- Every finite code in the declared cost aperture is represented exactly. -/
  costBallComplete : ∀ bound certificate,
    certificate ∈ costBall bound ↔ proofCost certificate ≤ bound
  /-- Executable finite proof-ball search at a specified cost. -/
  searchBall : Nat.Partrec.Code × ℕ → Bool
  /-- Complete search of each declared ball is total and computable. -/
  searchBallComputable : Computable searchBall
  /-- The search covers exactly the accepted certificates within that cost ball. -/
  searchBallExact : ∀ program bound, searchBall (program, bound) = true ↔
    ∃ certificate, proofCost certificate ≤ bound ∧ accepts (program, certificate) = true

/-- A proposed description-size bound dominates the shortest accepted proof whenever it exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f57db9e30061902c51cd9a73168d2cd755052f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
