# div_eq_mul_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b7b9b9af3da0d884cad978683d9315aaf0f1aa5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a7f45db-65f5-221c-d3d5-1b4c3116b332",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:378392dd-75f3-efd4-8d42-9dc67b23a8fb",
  "kind": "theorem",
  "lexical_name": "div_eq_mul_one_div",
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
  "slug": "div-eq-mul-one-div--2d5d1ead907fecfd8be7b4e4",
  "source": {
    "blob": "7b7b9b9af3da0d884cad978683d9315aaf0f1aa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 327,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d5d1ead907fecfd8be7b4e408c22846e37a0b770714b824583d7eb7c8eb6695",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:378392dd-75f3-efd4-8d42-9dc67b23a8fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_mul_one_div (a b : G) : a / b = a * (1 / b) := by rw [div_eq_mul_inv, one_div]
#align div_eq_mul_one_div div_eq_mul_one_div
#align sub_eq_add_zero_sub sub_eq_add_zero_sub

end DivInvMonoid

section DivInvOneMonoid

variable [DivInvOneMonoid G]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7b9b9af3da0d884cad978683d9315aaf0f1aa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
