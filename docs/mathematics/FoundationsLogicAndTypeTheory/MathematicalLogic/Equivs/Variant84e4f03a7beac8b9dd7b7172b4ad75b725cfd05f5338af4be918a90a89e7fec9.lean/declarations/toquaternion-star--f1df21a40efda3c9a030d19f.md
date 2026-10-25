# toQuaternion_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9f148c68103f8a3a7cbca7f249f33ca632acb99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84e4f03a7beac8b9dd7b7172b4ad75b725cfd05f5338af4be918a90a89e7fec9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c23f17c5-bc24-eddf-97ea-7b6fad7f8452",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15cd686a-010c-e9a2-62ec-7efa40229c0e",
  "kind": "theorem",
  "lexical_name": "toQuaternion_star",
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
  "slug": "toquaternion-star--f1df21a40efda3c9a030d19f",
  "source": {
    "blob": "b9f148c68103f8a3a7cbca7f249f33ca632acb99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 311,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant84e4f03a7beac8b9dd7b7172b4ad75b725cfd05f5338af4be918a90a89e7fec9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1df21a40efda3c9a030d19f276da9441bf995da7a897af1d70ce954cbc8c62c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant84e4f03a7beac8b9dd7b7172b4ad75b725cfd05f5338af4be918a90a89e7fec9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15cd686a-010c-e9a2-62ec-7efa40229c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toQuaternion_star (c : CliffordAlgebra (Q c₁ c₂)) :
    toQuaternion (star c) = star (toQuaternion c) := by
  simp only [CliffordAlgebra.star_def']
  induction c using CliffordAlgebra.induction
  case h_grade0 r =>
    simp only [reverse.commutes, AlgHom.commutes, QuaternionAlgebra.coe_algebraMap,
      QuaternionAlgebra.star_coe]
  case h_grade1 x =>
    rw [reverse_ι, involute_ι, toQuaternion_ι, AlgHom.map_neg, toQuaternion_ι,
      QuaternionAlgebra.neg_mk, star_mk, neg_zero]
  case h_mul x₁ x₂ hx₁ hx₂ => simp only [reverse.map_mul, AlgHom.map_mul, hx₁, hx₂, star_mul]
  case h_add x₁ x₂ hx₁ hx₂ => simp only [reverse.map_add, AlgHom.map_add, hx₁, hx₂, star_add]
#align clifford_algebra_quaternion.to_quaternion_star CliffordAlgebraQuaternion.toQuaternion_star

/-- Map a quaternion into the clifford algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant84e4f03a7beac8b9dd7b7172b4ad75b725cfd05f5338af4be918a90a89e7fec9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant84e4f03a7beac8b9dd7b7172b4ad75b725cfd05f5338af4be918a90a89e7fec9.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f148c68103f8a3a7cbca7f249f33ca632acb99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
