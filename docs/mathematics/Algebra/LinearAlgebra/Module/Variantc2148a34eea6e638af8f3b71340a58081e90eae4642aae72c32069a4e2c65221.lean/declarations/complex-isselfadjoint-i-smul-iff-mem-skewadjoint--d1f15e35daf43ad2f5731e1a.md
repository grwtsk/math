# Complex.isSelfAdjoint_I_smul_iff_mem_skewAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8f1fdeb-0b84-dd24-0a1d-ba9b22ba479c",
  "kind": "lemma",
  "lexical_name": "Complex.isSelfAdjoint_I_smul_iff_mem_skewAdjoint",
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
  "slug": "complex-isselfadjoint-i-smul-iff-mem-skewadjoint--d1f15e35daf43ad2f5731e1a",
  "source": {
    "blob": "2888e10ff4f8a035a78d19ff1064404f9950fa7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 369,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f15e35daf43ad2f5731e1a94128a28694d4bdf030a5344cc55a8595a940968",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8f1fdeb-0b84-dd24-0a1d-ba9b22ba479c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma Complex.isSelfAdjoint_I_smul_iff_mem_skewAdjoint {a : A} :
    IsSelfAdjoint (I • a) ↔ a ∈ skewAdjoint A := by
  simp [← I_smul_mem_skewAdjoint_iff_isSelfAdjoint, smul_smul]

/-- Create a `selfAdjoint` element from a `skewAdjoint` element by multiplying by the scalar
`-Complex.I`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2888e10ff4f8a035a78d19ff1064404f9950fa7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
