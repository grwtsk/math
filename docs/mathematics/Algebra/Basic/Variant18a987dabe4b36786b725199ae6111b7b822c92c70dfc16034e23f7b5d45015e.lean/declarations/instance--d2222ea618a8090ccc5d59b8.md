# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c52fc07444049b0680429e5a020a6c42df0b98da804546b506b14d8c935e0734",
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
  "slug": "instance--d2222ea618a8090ccc5d59b8",
  "source": {
    "blob": "242e538eb4f3f637dcc30f899e6779f3a71a7d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 323,
    "path": "GRWTSK/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2222ea618a8090ccc5d59b8e30c843a879a4a2a85dd4bf493f1648d5f699576",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c52fc07444049b0680429e5a020a6c42df0b98da804546b506b14d8c935e0734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R₀ : Type*} [Semiring R₀] [Π i, AddCommMonoid (R i)] [Π i, Module R₀ (R i)]
    [∀ i, AddSubmonoidClass (S i) (R i)] [∀ i, SMulMemClass (S i) R₀ (R i)] :
  Module R₀ (Πʳ i, [R i, B i]_[𝓕]) :=
  DFunLike.coe_injective.module R₀ (M := Π i, R i) coeAddMonoidHom (fun _ _ ↦ rfl)

end Algebra

section eval

variable {S : ι → Type*}
variable [Π i, SetLike (S i) (R i)]
variable {B : Π i, S i}

/-- `RestrictedProduct.evalMonoidHom j` is the monoid homomorphism from the restricted
product `Πʳ i, [R i, B i]_[𝓕]` to the component `R j`.
-/
@[to_additive /-- `RestrictedProduct.evalAddMonoidHom j` is the monoid homomorphism from the
restricted product `Πʳ i, [R i, B i]_[𝓕]` to the component `R j`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242e538eb4f3f637dcc30f899e6779f3a71a7d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
