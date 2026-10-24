# apply_abs_le_mul_of_one_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5753c7f-981d-dc54-0c5d-b6707864078e",
  "kind": "theorem",
  "lexical_name": "apply_abs_le_mul_of_one_le'",
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
  "slug": "apply-abs-le-mul-of-one-le--eb2e71aee98cc0eb5bfd49fd",
  "source": {
    "blob": "8eb36b5a62081a64e58ebc51a7ca7ac98773396a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 257,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb2e71aee98cc0eb5bfd49fd248f83113813a5bf94492aa67e5619b8b4569bf2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5753c7f-981d-dc54-0c5d-b6707864078e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_abs_le_mul_of_one_le' {H : Type*} [MulOneClass H] [LE H]
    [MulLeftMono H] [MulRightMono H] {f : G → H}
    {a : G} (h₁ : 1 ≤ f a) (h₂ : 1 ≤ f (-a)) : f |a| ≤ f a * f (-a) :=
  (le_total a 0).rec (fun ha => (abs_of_nonpos ha).symm ▸ le_mul_of_one_le_left' h₁) fun ha =>
    (abs_of_nonneg ha).symm ▸ le_mul_of_one_le_right' h₂

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eb36b5a62081a64e58ebc51a7ca7ac98773396a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
