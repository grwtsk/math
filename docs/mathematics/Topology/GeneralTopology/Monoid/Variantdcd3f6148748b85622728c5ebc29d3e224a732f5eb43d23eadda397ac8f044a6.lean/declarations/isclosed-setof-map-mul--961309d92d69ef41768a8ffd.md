# isClosed_setOf_map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdd96dfb-7d23-6bee-7ddc-884dbc037441",
  "kind": "theorem",
  "lexical_name": "isClosed_setOf_map_mul",
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
  "slug": "isclosed-setof-map-mul--961309d92d69ef41768a8ffd",
  "source": {
    "blob": "82746c2f2a4e25027e47de20068dc6441dfc4b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961309d92d69ef41768a8ffdfd8d973a3140413212a73dd4796f65fc05fcc3af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd96dfb-7d23-6bee-7ddc-884dbc037441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOf_map_mul [Mul M₁] [Mul M₂] [ContinuousMul M₂] :
    IsClosed { f : M₁ → M₂ | ∀ x y, f (x * y) = f x * f y } := by
  simp only [setOf_forall]
  exact
    isClosed_iInter fun x =>
      isClosed_iInter fun y =>
        isClosed_eq (continuous_apply _)
          -- Porting note: proof was:
          -- `((continuous_apply _).mul (continuous_apply _))`
          (by continuity)
#align is_closed_set_of_map_mul isClosed_setOf_map_mul
#align is_closed_set_of_map_add isClosed_setOf_map_add

-- porting note: split variables command over two lines, can't change explicitness at the same time
-- as declaring new variables.
variable {M₁ M₂}
variable [MulOneClass M₁] [MulOneClass M₂] [ContinuousMul M₂]
  {F : Type*} [MonoidHomClass F M₁ M₂] {l : Filter α}

/-- Construct a bundled monoid homomorphism `M₁ →* M₂` from a function `f` and a proof that it
belongs to the closure of the range of the coercion from `M₁ →* M₂` (or another type of bundled
homomorphisms that has a `MonoidHomClass` instance) to `M₁ → M₂`. -/
@[to_additive (attr := simps (config := .asFn))
  "Construct a bundled additive monoid homomorphism `M₁ →+ M₂` from a function `f`
and a proof that it belongs to the closure of the range of the coercion from `M₁ →+ M₂` (or another
type of bundled homomorphisms that has an `AddMonoidHomClass` instance) to `M₁ → M₂`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82746c2f2a4e25027e47de20068dc6441dfc4b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
