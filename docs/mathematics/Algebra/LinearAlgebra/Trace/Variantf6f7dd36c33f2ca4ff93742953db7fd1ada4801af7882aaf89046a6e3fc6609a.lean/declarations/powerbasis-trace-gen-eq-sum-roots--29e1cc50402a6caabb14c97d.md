# PowerBasis.trace_gen_eq_sum_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07c0abd8-02d1-7240-4efb-820c1a085c5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc04aaf2-df9b-d5f1-7036-3c92bd6838fe",
  "kind": "theorem",
  "lexical_name": "PowerBasis.trace_gen_eq_sum_roots",
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
  "slug": "powerbasis-trace-gen-eq-sum-roots--29e1cc50402a6caabb14c97d",
  "source": {
    "blob": "fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 246,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e1cc50402a6caabb14c97d0b72ff4451771b0e5671a4e6cdb32675d84a7911",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc04aaf2-df9b-d5f1-7036-3c92bd6838fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PowerBasis.trace_gen_eq_sum_roots [Nontrivial S] (pb : PowerBasis K S)
    (hf : (minpoly K pb.gen).Splits (algebraMap K F)) :
    algebraMap K F (trace K S pb.gen) = ((minpoly K pb.gen).map (algebraMap K F)).roots.sum := by
  rw [PowerBasis.trace_gen_eq_nextCoeff_minpoly, RingHom.map_neg, ←
    nextCoeff_map (algebraMap K F).injective,
    sum_roots_eq_nextCoeff_of_monic_of_split ((minpoly.monic (PowerBasis.isIntegral_gen _)).map _)
      ((splits_id_iff_splits _).2 hf),
    neg_neg]
#align power_basis.trace_gen_eq_sum_roots PowerBasis.trace_gen_eq_sum_roots

namespace IntermediateField.AdjoinSimple

open IntermediateField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
