# infDegree_withTop_some_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18c8f54990af58cc52db2c3a94bb8661daa3dba2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 591,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dfa2b45-88b1-60d0-79b3-048de253b6f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9df13d0a-ae68-86d6-efd5-71c9c09da0eb",
  "kind": "theorem",
  "lexical_name": "infDegree_withTop_some_comp",
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
  "slug": "infdegree-withtop-some-comp--6e7701640b91c2d6a7ae180b",
  "source": {
    "blob": "18c8f54990af58cc52db2c3a94bb8661daa3dba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 591,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e7701640b91c2d6a7ae180b4c0f8cf5d40594ecd3af81a5290fc127a5529112",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df13d0a-ae68-86d6-efd5-71c9c09da0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infDegree_withTop_some_comp {s : AddMonoidAlgebra R A} (hs : s.support.Nonempty) :
    infDegree (WithTop.some ∘ D) s = infDegree D s := by
  unfold AddMonoidAlgebra.infDegree
  rw [← Finset.coe_inf' hs, Finset.inf'_eq_inf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18c8f54990af58cc52db2c3a94bb8661daa3dba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
