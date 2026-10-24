# Ici_mul_Ici_subset'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4558d9db-bb43-5fd3-305f-049cf1502b7d",
  "kind": "theorem",
  "lexical_name": "Ici_mul_Ici_subset'",
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
  "slug": "ici-mul-ici-subset--0e6a70cda014bd0ffb0e03d2",
  "source": {
    "blob": "d34066aa9d23d2a1fcf990f5552cbef0404e9dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e6a70cda014bd0ffb0e03d2d4ce1d636c03e77e46d35d9620039267a175f925",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4558d9db-bb43-5fd3-305f-049cf1502b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ici_mul_Ici_subset' (a b : α) : Ici a * Ici b ⊆ Ici (a * b) := by
  rintro x ⟨y, hya, z, hzb, rfl⟩
  exact mul_le_mul' hya hzb

end ContravariantLE

section ContravariantLT

variable [Mul α] [PartialOrder α] [MulLeftStrictMono α] [MulRightStrictMono α]

@[to_additive Icc_add_Ico_subset]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34066aa9d23d2a1fcf990f5552cbef0404e9dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
