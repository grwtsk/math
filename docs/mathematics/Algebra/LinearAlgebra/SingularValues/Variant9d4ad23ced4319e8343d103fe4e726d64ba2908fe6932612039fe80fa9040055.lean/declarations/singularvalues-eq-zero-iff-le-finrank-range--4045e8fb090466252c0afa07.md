# singularValues_eq_zero_iff_le_finrank_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14bcf812a2558519854b10b4922e0454cb1a9c19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16c3d999-f13c-6e97-e39e-44f9cefd67bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8455449-5628-85b6-d993-a1501d2b0d48",
  "kind": "theorem",
  "lexical_name": "singularValues_eq_zero_iff_le_finrank_range",
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
  "slug": "singularvalues-eq-zero-iff-le-finrank-range--4045e8fb090466252c0afa07",
  "source": {
    "blob": "14bcf812a2558519854b10b4922e0454cb1a9c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4045e8fb090466252c0afa07eb116fcc346d409acbbe1937769fb23541e5c111",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8455449-5628-85b6-d993-a1501d2b0d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singularValues_eq_zero_iff_le_finrank_range {n : ℕ} :
    T.singularValues n = 0 ↔ finrank 𝕜 T.range ≤ n := by
  rw [← Finsupp.notMem_support_iff, support_singularValues, Finset.mem_range, not_lt]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bcf812a2558519854b10b4922e0454cb1a9c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
