# normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1d8daf495f8073554d4466b207bff1893033f89ef716eb925d5ac89c9cedcc4",
  "kind": "def",
  "lexical_name": "normalizer",
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
  "slug": "normalizer--a5ca43232f4cd17bf120fa08",
  "source": {
    "blob": "d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 650,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5ca43232f4cd17bf120fa0861784e1acb8e1c0116eb7ac02e602c111af69ff2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1d8daf495f8073554d4466b207bff1893033f89ef716eb925d5ac89c9cedcc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizer : Subgroup G where
  carrier := { g : G | ∀ n, n ∈ H ↔ g * n * g⁻¹ ∈ H }
  one_mem' := by simp
  mul_mem' {a b} (ha : ∀ n, n ∈ H ↔ a * n * a⁻¹ ∈ H) (hb : ∀ n, n ∈ H ↔ b * n * b⁻¹ ∈ H) n := by
    rw [hb, ha]
    simp only [mul_assoc, mul_inv_rev]
  inv_mem' {a} (ha : ∀ n, n ∈ H ↔ a * n * a⁻¹ ∈ H) n := by
    rw [ha (a⁻¹ * n * a⁻¹⁻¹)]
    simp only [inv_inv, mul_assoc, mul_inv_cancel_left, mul_inv_cancel, mul_one]

-- variant for sets.
-- TODO should this replace `normalizer`?
/-- The `setNormalizer` of `S` is the subgroup of `G` whose elements satisfy `g*S*g⁻¹=S` -/
@[to_additive
      "The `setNormalizer` of `S` is the subgroup of `G` whose elements satisfy
      `g+S-g=S`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
