# differentiableAt_hurwitzZeta_sub_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db0a47feb7759c3c8a2a1f811f4968cbae0878fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61af11a7-4a99-1ace-ddf0-603ac8b352f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5e1dd74-6547-2d72-34db-e5ba654ab497",
  "kind": "lemma",
  "lexical_name": "differentiableAt_hurwitzZeta_sub_one_div",
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
  "slug": "differentiableat-hurwitzzeta-sub-one-div--1de7dbf25ad2f4837a4429f1",
  "source": {
    "blob": "db0a47feb7759c3c8a2a1f811f4968cbae0878fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1de7dbf25ad2f4837a4429f128f6c17c6b10d5bdfdd77f117673da15a3990499",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5e1dd74-6547-2d72-34db-e5ba654ab497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiableAt_hurwitzZeta_sub_one_div (a : UnitAddCircle) :
    DifferentiableAt ℂ (fun s ↦ hurwitzZeta a s - 1 / (s - 1) / Gammaℝ s) 1 := by
  simp only [hurwitzZeta, add_sub_right_comm]
  exact (differentiableAt_hurwitzZetaEven_sub_one_div a).add (differentiable_hurwitzZetaOdd a 1)

/-- Expression for `hurwitzZeta a 1` as a limit. (Mathematically `hurwitzZeta a 1` is
undefined, but our construction assigns some value to it; this lemma is mostly of interest for
determining what that value is). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db0a47feb7759c3c8a2a1f811f4968cbae0878fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
