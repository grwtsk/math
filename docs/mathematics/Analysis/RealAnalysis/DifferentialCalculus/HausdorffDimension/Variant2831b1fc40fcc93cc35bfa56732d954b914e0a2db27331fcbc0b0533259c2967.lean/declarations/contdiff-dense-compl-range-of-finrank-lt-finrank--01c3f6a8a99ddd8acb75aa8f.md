# ContDiff.dense_compl_range_of_finrank_lt_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0debe7389202882364767b89aecfa1f8a72fad9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 633,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:979568a6-faf2-3238-57b9-03e1cd0ee2e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2124d390-5b1e-332e-ae33-871220ab01bd",
  "kind": "theorem",
  "lexical_name": "ContDiff.dense_compl_range_of_finrank_lt_finrank",
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
  "slug": "contdiff-dense-compl-range-of-finrank-lt-finrank--01c3f6a8a99ddd8acb75aa8f",
  "source": {
    "blob": "b0debe7389202882364767b89aecfa1f8a72fad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 633,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01c3f6a8a99ddd8acb75aa8fd8dde1b649e9182229da7b694a45d5792f2b4935",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2124d390-5b1e-332e-ae33-871220ab01bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiff.dense_compl_range_of_finrank_lt_finrank [FiniteDimensional ℝ F]
    (h : ContDiff ℝ 1 f) (hEF : finrank ℝ E < finrank ℝ F) : Dense (range f)ᶜ :=
  dense_compl_of_dimH_lt_finrank <| h.dimH_range_le.trans_lt <| Nat.cast_lt.2 hEF

end Differentiable

/--
The Hausdorff dimension of the orthogonal projection of a set `s` onto a subspace `K`
is less than or equal to the Hausdorff dimension of `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0debe7389202882364767b89aecfa1f8a72fad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
