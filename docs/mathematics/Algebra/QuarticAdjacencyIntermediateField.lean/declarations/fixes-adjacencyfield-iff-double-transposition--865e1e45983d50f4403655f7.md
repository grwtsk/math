# fixes_adjacencyField_iff_double_transposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67548cce58bbf17337dfd2cc4fc87573a6d85f2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/Algebra/QuarticAdjacencyIntermediateField.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:981f5457-4eff-ecf8-9539-eb15fbb2b578",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be82bc5e-50df-216b-0ed9-aef1686348f9",
  "kind": "theorem",
  "lexical_name": "fixes_adjacencyField_iff_double_transposition",
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
  "slug": "fixes-adjacencyfield-iff-double-transposition--865e1e45983d50f4403655f7",
  "source": {
    "blob": "67548cce58bbf17337dfd2cc4fc87573a6d85f2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/Algebra/QuarticAdjacencyIntermediateField.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:865e1e45983d50f4403655f7ef67ce143c3184d2b2e0846ed8bb0019007451c4",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticAdjacencyIntermediateField.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be82bc5e-50df-216b-0ed9-aef1686348f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixes_adjacencyField_iff_double_transposition
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) :
    (∀ x : adjacencyField p e, φ x.1 = x.1) ↔
      GRWTSK.Algebra.QuarticGaloisMatching.actualRootPerm p e hne he φ = 1 ∨
      GRWTSK.Algebra.QuarticGaloisMatching.actualRootPerm p e hne he φ =
        double01_23 ∨
      GRWTSK.Algebra.QuarticGaloisMatching.actualRootPerm p e hne he φ =
        double02_13 ∨
      GRWTSK.Algebra.QuarticGaloisMatching.actualRootPerm p e hne he φ =
        double03_12 := by
  rw [fixes_adjacencyField_iff p e φ]
  exact automorphism_fixes_all_adjacencies_iff_double_transposition p e hne he φ

end
end GRWTSK.Algebra.QuarticAdjacencyIntermediateField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticAdjacencyIntermediateField.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticAdjacencyIntermediateField.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67548cce58bbf17337dfd2cc4fc87573a6d85f2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
