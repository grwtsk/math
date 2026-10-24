# m_Birkhoff_inequalities

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f5079a243a1cdb0c26bc3d01d47f9a214309a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f615d05f-6ec8-f26d-efe5-a4854c182980",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e9054ff-0b4c-aed5-4bb1-8ead323910e1",
  "kind": "lemma",
  "lexical_name": "m_Birkhoff_inequalities",
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
  "slug": "m-birkhoff-inequalities--07cc6960e8b37c85408d0208",
  "source": {
    "blob": "29f5079a243a1cdb0c26bc3d01d47f9a214309a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 186,
    "path": "GRWTSK/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07cc6960e8b37c85408d02082f89d2974d528e371eb41069fd0f9c12085100d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9054ff-0b4c-aed5-4bb1-8ead323910e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma m_Birkhoff_inequalities (a b c : α) :
    |(a ⊔ c) / (b ⊔ c)|ₘ ⊔ |(a ⊓ c) / (b ⊓ c)|ₘ ≤ |a / b|ₘ :=
  sup_le (mabs_sup_div_sup_le_mabs a b c) (mabs_inf_div_inf_le_mabs a b c)

end CommGroup
end Lattice

section LinearOrder
variable [Group α] [LinearOrder α] {a b : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f5079a243a1cdb0c26bc3d01d47f9a214309a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
