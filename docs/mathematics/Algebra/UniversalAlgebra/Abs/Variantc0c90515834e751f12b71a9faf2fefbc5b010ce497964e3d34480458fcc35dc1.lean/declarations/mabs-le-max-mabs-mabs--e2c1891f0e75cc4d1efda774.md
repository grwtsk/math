# mabs_le_max_mabs_mabs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06e6ac83-e2ac-864a-98c4-e00d1b6844cd",
  "kind": "theorem",
  "lexical_name": "mabs_le_max_mabs_mabs",
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
  "slug": "mabs-le-max-mabs-mabs--e2c1891f0e75cc4d1efda774",
  "source": {
    "blob": "8eb36b5a62081a64e58ebc51a7ca7ac98773396a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 151,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2c1891f0e75cc4d1efda774924f0cfe35e39ebdb38ed24051c7510442cbe0e1",
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

Occurrence: `result:06e6ac83-e2ac-864a-98c4-e00d1b6844cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mabs_le_max_mabs_mabs (hab : a ≤ b) (hbc : b ≤ c) : |b|ₘ ≤ max |a|ₘ |c|ₘ :=
  mabs_le'.2
    ⟨by simp [hbc.trans (le_mabs_self c)], by
      simp [(inv_le_inv_iff.mpr hab).trans (inv_le_mabs a)]⟩

omit [IsOrderedMonoid G] in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eb36b5a62081a64e58ebc51a7ca7ac98773396a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
