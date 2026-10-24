# div_tendsto_atTop_zero_of_degree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea47ed65a027729e75532e896cac84790169d110",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb4bd767-8336-f7a6-83e5-9a1ec64bc682",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e15a8219-5d4b-82fb-ab7d-7fc2c02b8169",
  "kind": "theorem",
  "lexical_name": "div_tendsto_atTop_zero_of_degree_lt",
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
  "slug": "div-tendsto-attop-zero-of-degree-lt--a9d07ea829278c8c9261179b",
  "source": {
    "blob": "ea47ed65a027729e75532e896cac84790169d110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d07ea829278c8c9261179b209096df876d6a037b6d0a25bb4ee876ae137a2d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e15a8219-5d4b-82fb-ab7d-7fc2c02b8169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_tendsto_atTop_zero_of_degree_lt (hdeg : P.degree < Q.degree) :
    Tendsto (fun x => eval x P / eval x Q) atTop (𝓝 0) := by
  by_cases hP : P = 0
  · simp [hP]
  rw [← natDegree_lt_natDegree_iff hP] at hdeg
  refine (isEquivalent_atTop_div P Q).symm.tendsto_nhds ?_
  rw [← mul_zero]
  refine (tendsto_zpow_atTop_zero ?_).const_mul _
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea47ed65a027729e75532e896cac84790169d110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
