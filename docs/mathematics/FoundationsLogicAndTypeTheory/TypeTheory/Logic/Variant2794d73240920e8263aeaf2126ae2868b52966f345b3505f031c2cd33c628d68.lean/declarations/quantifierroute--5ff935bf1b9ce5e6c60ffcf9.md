# QuantifierRoute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1714be31667f41cb6c59b1cf5e788e27d10a74b9e1bbf69978986111933bc457",
  "kind": "structure",
  "lexical_name": "QuantifierRoute",
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
  "slug": "quantifierroute--5ff935bf1b9ce5e6c60ffcf9",
  "source": {
    "blob": "3720f216abc4cebf330cd8529275e857f8174f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant2794d73240920e8263aeaf2126ae2868b52966f345b3505f031c2cd33c628d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ff935bf1b9ce5e6c60ffcf97a3a58aed452d8d490b2cb82e8dfdac376661265",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant2794d73240920e8263aeaf2126ae2868b52966f345b3505f031c2cd33c628d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1714be31667f41cb6c59b1cf5e788e27d10a74b9e1bbf69978986111933bc457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuantifierRoute {Γ : List (Expr S)} {γ : Nat → Mode}
    (W : WitnessFamily P Γ γ) (C : Set (Set S)) (b I : Set S) where
  /-- The codomain profile selected for the quantifier route's product triple. -/
  codomain : Set S
  /-- The product profile selected for the quantifier route. -/
  product : Set S
  triple : ProfileTriple P I codomain product
  /-- The proof wrapper transporting the base profile into the route codomain. -/
  inCode : ProofWrapper S
  inFormed : inCode.Formed W C b codomain false
  /-- The proof wrapper transporting the route product back to the base profile. -/
  outCode : ProofWrapper S
  outFormed : outCode.Formed W C product b false

namespace QuantifierRoute
variable {Γ Δ : List (Expr S)} {γ δ : Nat → Mode} {W : WitnessFamily P Γ γ}
    {C : Set (Set S)} {b I : Set S}
open Classical in
/-- Transport the quantifier route and its formation witnesses through a source embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant2794d73240920e8263aeaf2126ae2868b52966f345b3505f031c2cd33c628d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant2794d73240920e8263aeaf2126ae2868b52966f345b3505f031c2cd33c628d68.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3720f216abc4cebf330cd8529275e857f8174f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
