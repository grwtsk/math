# Commute.smul_right_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03628368-b088-31ec-c1c4-1f82bc2b97a9",
  "kind": "lemma",
  "lexical_name": "Commute.smul_right_iff₀",
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
  "slug": "commute-smul-right-iff--669de2079ac0b8f086b579be",
  "source": {
    "blob": "e1db92f192f7a85f158eda6e13da06912a5dc035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 63,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:669de2079ac0b8f086b579be7f9ad1a12cacfa7c2cafb15dd608bfac15e8854b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03628368-b088-31ec-c1c4-1f82bc2b97a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Commute.smul_right_iff₀ [Mul β] [SMulCommClass α β β] [IsScalarTower α β β] {x y : β}
    (ha : a ≠ 0) : Commute x (a • y) ↔ Commute x y := Commute.smul_right_iff (g := Units.mk0 a ha)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1db92f192f7a85f158eda6e13da06912a5dc035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
