# groupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db54a4605538689f194ce9cc79319705169bea5afdb3f4f9b9b4f95845ffa0e4",
  "kind": "instance",
  "lexical_name": "groupWithZero",
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
  "slug": "groupwithzero--f1ba3ea9683792f7731382d4",
  "source": {
    "blob": "c6c712637d344205b91ae33b852ba21205d5bc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 177,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1ba3ea9683792f7731382d438ac285792ae8cbd0805922c5d7722e92d3aa366",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db54a4605538689f194ce9cc79319705169bea5afdb3f4f9b9b4f95845ffa0e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance groupWithZero [GroupWithZero α] : GroupWithZero αᵃᵒᵖ :=
  { AddOpposite.monoidWithZero α, AddOpposite.divInvMonoid α,
    AddOpposite.nontrivial α with
    mul_inv_cancel := fun _ hx => unop_injective <| mul_inv_cancel <| unop_injective.ne hx,
    inv_zero := unop_injective inv_zero }

end AddOpposite

open MulOpposite

/-- A non-unital ring homomorphism `f : R →ₙ+* S` such that `f x` commutes with `f y` for all `x, y`
defines a non-unital ring homomorphism to `Sᵐᵒᵖ`. -/
@[simps (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c712637d344205b91ae33b852ba21205d5bc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
