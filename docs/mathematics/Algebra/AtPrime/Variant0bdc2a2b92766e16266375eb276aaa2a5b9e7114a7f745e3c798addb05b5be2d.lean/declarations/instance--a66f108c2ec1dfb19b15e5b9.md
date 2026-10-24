# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:975f10eca65a09ecfe8354b5c20698bed05797d3fe5a06fc866316428b961327",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a66f108c2ec1dfb19b15e5b9",
  "source": {
    "blob": "cc973699a5a40a392efe805450355b715be3bdca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 248,
    "path": "GRWTSK/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a66f108c2ec1dfb19b15e5b929eca5602233c3608749bae24ce8600bcd8a2059",
  "verification": {
    "reference": "docs/verification/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:975f10eca65a09ecfe8354b5c20698bed05797d3fe5a06fc866316428b961327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (p : Ideal A) [p.IsPrime] (P : Ideal B) [P.IsPrime] [P.LiesOver p] :
  IsScalarTower A (Localization.AtPrime p) (Localization.AtPrime P) := by
    refine IsScalarTower.of_algebraMap_eq fun x ↦ ?_
    simp only [RingHom.algebraMap_toAlgebra, RingHom.coe_comp, Function.comp_apply,
      Localization.localRingHom_to_map, ← IsScalarTower.algebraMap_apply]

end

variable {ι : Type*} {R : ι → Type*} [∀ i, CommSemiring (R i)]
variable {i : ι} (I : Ideal (R i)) [I.IsPrime]

/-- `Localization.localRingHom` specialized to a projection homomorphism from a product ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc973699a5a40a392efe805450355b715be3bdca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
