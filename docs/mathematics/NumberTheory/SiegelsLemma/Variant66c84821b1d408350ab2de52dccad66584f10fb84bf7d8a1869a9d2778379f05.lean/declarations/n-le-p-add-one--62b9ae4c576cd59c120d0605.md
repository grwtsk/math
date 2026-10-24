# N_le_P_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e5b1bb6-28d6-4847-6ff2-d4b7844734e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:198f2cad-775b-6334-a628-9a30fd562587",
  "kind": "lemma",
  "lexical_name": "N_le_P_add_one",
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
  "slug": "n-le-p-add-one--62b9ae4c576cd59c120d0605",
  "source": {
    "blob": "5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b9ae4c576cd59c120d0605e70cdebd3dbb8e5ae2710f8a85875e62429e7a5c",
  "verification": {
    "reference": "docs/verification/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:198f2cad-775b-6334-a628-9a30fd562587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma N_le_P_add_one (i : α) : N i ≤ P i + 1 := by
  calc N i
  _ ≤ 0 := by
    apply Finset.sum_nonpos
    intro j _
    simp only [mul_neg, Left.neg_nonpos_iff]
    positivity
  _ ≤ P i + 1 := by
    apply le_trans (Finset.sum_nonneg _) (Int.le_add_one (le_refl P i))
    intro j _
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
