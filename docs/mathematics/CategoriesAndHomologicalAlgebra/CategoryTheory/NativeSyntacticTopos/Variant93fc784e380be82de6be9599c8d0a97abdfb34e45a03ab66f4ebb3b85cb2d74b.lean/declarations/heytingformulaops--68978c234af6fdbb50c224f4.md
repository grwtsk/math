# HeytingFormulaOps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3043093dfd91467de9d7f969367f25d0c89aaf72a7770548b3bc50177aba6810",
  "kind": "structure",
  "lexical_name": "HeytingFormulaOps",
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
  "slug": "heytingformulaops--68978c234af6fdbb50c224f4",
  "source": {
    "blob": "423dbf547c1240656d1117f5eb6f10595e8d6748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2973,
    "line": 2938,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68978c234af6fdbb50c224f44becf175121f742492e904d16ba7296a840837ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3043093dfd91467de9d7f969367f25d0c89aaf72a7770548b3bc50177aba6810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2938–2973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HeytingFormulaOps
    {S : Site.{u, v}}
    (Γ : InternalContext S) where
  top : InternalFormula Γ
  bottom : InternalFormula Γ
  and : InternalFormula Γ → InternalFormula Γ → InternalFormula Γ
  or : InternalFormula Γ → InternalFormula Γ → InternalFormula Γ
  imp : InternalFormula Γ → InternalFormula Γ → InternalFormula Γ
  top_forces :
    InternalFormula.Forces top
  and_intro :
    ∀ φ ψ,
      InternalFormula.Forces φ →
      InternalFormula.Forces ψ →
        InternalFormula.Forces (and φ ψ)
  and_elim_left :
    ∀ φ ψ,
      InternalFormula.Forces (and φ ψ) →
        InternalFormula.Forces φ
  and_elim_right :
    ∀ φ ψ,
      InternalFormula.Forces (and φ ψ) →
        InternalFormula.Forces ψ
  imp_intro :
    ∀ φ ψ,
      (InternalFormula.Forces φ → InternalFormula.Forces ψ) →
        InternalFormula.Forces (imp φ ψ)
  imp_elim :
    ∀ φ ψ,
      InternalFormula.Forces (imp φ ψ) →
      InternalFormula.Forces φ →
        InternalFormula.Forces ψ
  disjunctionBoundary : InternalBoundary
  implicationBoundary : InternalBoundary
  noExcludedMiddleClaim : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean#L2938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `423dbf547c1240656d1117f5eb6f10595e8d6748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
