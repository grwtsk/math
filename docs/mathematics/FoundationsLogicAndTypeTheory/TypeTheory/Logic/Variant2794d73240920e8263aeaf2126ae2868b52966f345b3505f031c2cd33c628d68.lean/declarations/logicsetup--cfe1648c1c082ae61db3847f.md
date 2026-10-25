# LogicSetup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abe1fbb201497770de7e2604ddeb073e774971441a4af3966f39e65ba0219ea0",
  "kind": "structure",
  "lexical_name": "LogicSetup",
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
  "slug": "logicsetup--cfe1648c1c082ae61db3847f",
  "source": {
    "blob": "3720f216abc4cebf330cd8529275e857f8174f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant2794d73240920e8263aeaf2126ae2868b52966f345b3505f031c2cd33c628d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfe1648c1c082ae61db3847f9a991564691544884ad745f2a08f02c8eed7536e",
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

Occurrence: `declaration:abe1fbb201497770de7e2604ddeb073e774971441a4af3966f39e65ba0219ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LogicSetup (P : Specification S) (Γ : List (Expr S)) (γ : Nat → Mode)
    (C : Set (Set S)) where
  /-- The feasible-profile witness family used by the logical construction. -/
  witnesses : WitnessFamily P Γ γ
  converters : ∀ J J', TerminalProfile P C J → TerminalProfile P C J' →
    Transfer P Γ γ (witnesses.type J) (witnesses.type J')
  /-- The distinguished base profile in which formulas are interpreted. -/
  base : Set S
  /-- The domain profile of the product used to encode implication. -/
  domain : Set S
  /-- The product profile of the implication-encoding triple. -/
  product : Set S
  triple : ProfileTriple P domain base product
  domain_mem : domain ∈ C
  base_mem : base ∈ C
  product_mem : product ∈ C
  /-- The proof wrapper carrying formulas from the base profile into the implication domain. -/
  inCode : ProofWrapper S
  inFormed : inCode.Formed witnesses C base domain false
  /-- The proof wrapper returning the implication product to the base profile. -/
  outCode : ProofWrapper S
  outFormed : outCode.Formed witnesses C product base false
  /-- A formed quantifier route for every direct observation layer. -/
  quantifiers : ∀ I, DirectLayer P C I → QuantifierRoute witnesses C base I

namespace LogicSetup

section
variable {Γ Δ : List (Expr S)} {γ δ : Nat → Mode} {C : Set (Set S)}

open Classical in
/-- Transport all logical witnesses, wrappers and quantifier routes through an embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant2794d73240920e8263aeaf2126ae2868b52966f345b3505f031c2cd33c628d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant2794d73240920e8263aeaf2126ae2868b52966f345b3505f031c2cd33c628d68.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3720f216abc4cebf330cd8529275e857f8174f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
