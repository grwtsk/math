# divConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78dc7fbdd216d5212222420f8b0474e5f493838cb5fc0da6f1e609c0b578bbee",
  "kind": "def",
  "lexical_name": "divConst",
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
  "slug": "divconst--b76e94d6c3bf1f01d9dda2c6",
  "source": {
    "blob": "e9395dd8e8b19b10571e3eece5e14c76c9c71572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b76e94d6c3bf1f01d9dda2c6ac64142b6ede82e3deb7a1044856f79a5b7c40f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78dc7fbdd216d5212222420f8b0474e5f493838cb5fc0da6f1e609c0b578bbee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def divConst (A B : Finset G) : ℚ≥0 := #(A / B) / #A

/-- The doubling constant `σₘ[A, B]` of two finsets `A` and `B` in a group is `|A * B| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "σₘ[" A ", " B "]" => Finset.mulConst A B

/-- The doubling constant `σₘ[A]` of a finset `A` in a group is `|A * A| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "σₘ[" A "]" => Finset.mulConst A A

/-- The doubling constant `σ[A, B]` of two finsets `A` and `B` in a group is `|A + B| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "σ[" A ", " B "]" => Finset.addConst A B

/-- The doubling constant `σ[A]` of a finset `A` in a group is `|A + A| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "σ[" A "]" => Finset.addConst A A

/-- The difference constant `σₘ[A, B]` of two finsets `A` and `B` in a group is `|A / B| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "δₘ[" A ", " B "]" => Finset.divConst A B

/-- The difference constant `σₘ[A]` of a finset `A` in a group is `|A / A| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "δₘ[" A "]" => Finset.divConst A A

/-- The difference constant `σ[A, B]` of two finsets `A` and `B` in a group is `|A - B| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "δ[" A ", " B "]" => Finset.subConst A B

/-- The difference constant `σ[A]` of a finset `A` in a group is `|A - A| / |A|`. -/
scoped[Combinatorics.Additive] notation3:max "δ[" A "]" => Finset.subConst A A

open scoped Combinatorics.Additive

@[to_additive (attr := simp) addConst_mul_card]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9395dd8e8b19b10571e3eece5e14c76c9c71572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
