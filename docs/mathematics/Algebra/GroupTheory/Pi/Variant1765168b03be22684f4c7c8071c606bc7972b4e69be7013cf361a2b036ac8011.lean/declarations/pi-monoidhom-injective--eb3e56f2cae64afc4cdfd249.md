# Pi.monoidHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7fb6969-b536-5263-fb23-a273ef9ed503",
  "kind": "theorem",
  "lexical_name": "Pi.monoidHom_injective",
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
  "slug": "pi-monoidhom-injective--eb3e56f2cae64afc4cdfd249",
  "source": {
    "blob": "5ff8b220452cf4e18efc0efb8f487bb1d629cc3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 301,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb3e56f2cae64afc4cdfd24925ad00fc90b627ed7910164d8b4e5025a4a16118",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7fb6969-b536-5263-fb23-a273ef9ed503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pi.monoidHom_injective {γ : Type w} [Nonempty I] [∀ i, MulOneClass (f i)] [MulOneClass γ]
    (g : ∀ i, γ →* f i) (hg : ∀ i, Function.Injective (g i)) :
    Function.Injective (Pi.monoidHom g) :=
  Pi.mulHom_injective (fun i => (g i).toMulHom) hg
#align pi.monoid_hom_injective Pi.monoidHom_injective
#align pi.add_monoid_hom_injective Pi.addMonoidHom_injective

variable (f) [(i : I) → Mul (f i)]

/-- Evaluation of functions into an indexed collection of semigroups at a point is a semigroup
homomorphism.
This is `Function.eval i` as a `MulHom`. -/
@[to_additive (attr := simps)
  "Evaluation of functions into an indexed collection of additive semigroups at a point is an
  additive semigroup homomorphism. This is `Function.eval i` as an `AddHom`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff8b220452cf4e18efc0efb8f487bb1d629cc3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
