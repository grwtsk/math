# orderedCancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca5e7bc3d428db00b753e91d3d1e097050b18090284f099ba1901afd8cf34014",
  "kind": "instance",
  "lexical_name": "orderedCancelCommMonoid",
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
  "slug": "orderedcancelcommmonoid--6e33a4d0a7abe0ad4161c15c",
  "source": {
    "blob": "bfe3fc3f0dd1d9f5febbe6f8abd9b5e66d156a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 70,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e33a4d0a7abe0ad4161c15c5d3d69d970a4e91f366fde96276941f3f26f9b51",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca5e7bc3d428db00b753e91d3d1e097050b18090284f099ba1901afd8cf34014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedCancelCommMonoid [∀ i, OrderedCancelCommMonoid <| f i] :
    OrderedCancelCommMonoid (∀ i : I, f i) :=
  { Pi.partialOrder, Pi.commMonoid with
    mul := (· * ·)
    one := (1 : ∀ i, f i)
    le := (· ≤ ·)
    lt := (· < ·)
    npow := Monoid.npow,
    le_of_mul_le_mul_left := fun _ _ _ h i =>
      OrderedCancelCommMonoid.le_of_mul_le_mul_left _ _ _ (h i)
    mul_le_mul_left := fun _ _ c h i =>
      OrderedCancelCommMonoid.mul_le_mul_left _ _ (c i) (h i) }
--Porting note: Old proof was
  -- refine_struct
  --     { Pi.partialOrder, Pi.monoid with
  --       mul := (· * ·)
  --       one := (1 : ∀ i, f i)
  --       le := (· ≤ ·)
  --       lt := (· < ·)
  --       npow := Monoid.npow } <;>
  --   pi_instance_derive_field
#align pi.ordered_cancel_comm_monoid Pi.orderedCancelCommMonoid
#align pi.ordered_cancel_add_comm_monoid Pi.orderedAddCancelCommMonoid

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe3fc3f0dd1d9f5febbe6f8abd9b5e66d156a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
