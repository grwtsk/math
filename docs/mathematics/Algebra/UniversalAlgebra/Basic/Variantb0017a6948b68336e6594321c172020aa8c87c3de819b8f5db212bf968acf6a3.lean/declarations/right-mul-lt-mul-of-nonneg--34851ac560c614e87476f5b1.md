# Right.mul_lt_mul_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85ba016f-b3b0-14cd-38e8-0063c51a4cde",
  "kind": "theorem",
  "lexical_name": "Right.mul_lt_mul_of_nonneg",
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
  "slug": "right-mul-lt-mul-of-nonneg--34851ac560c614e87476f5b1",
  "source": {
    "blob": "f1f513e1c94e86f17b34bdf8ba2f407974127dd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 103,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34851ac560c614e87476f5b142a6c4159bc29a0e743455aca694a2ff2ef923d9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85ba016f-b3b0-14cd-38e8-0063c51a4cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Right.mul_lt_mul_of_nonneg [PosMulMono α] [MulPosStrictMono α]
    (h₁ : a < b) (h₂ : c < d) (a0 : 0 ≤ a) (c0 : 0 ≤ c) : a * c < b * d :=
  mul_lt_mul_of_lt_of_le_of_nonneg_of_pos h₁ h₂.le a0 (c0.trans_lt h₂)

alias mul_lt_mul_of_nonneg := Left.mul_lt_mul_of_nonneg

alias mul_lt_mul'' := Left.mul_lt_mul_of_nonneg
attribute [gcongr] mul_lt_mul''

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f513e1c94e86f17b34bdf8ba2f407974127dd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
