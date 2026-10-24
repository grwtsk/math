# det_updateRow_add_smul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66f8b885e8ce08fecc06336d6a26d5eff6c15aa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 473,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c406f7a-5548-0e7c-6bd4-3a108fd29723",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdce94f7-35da-efda-7bbd-952ca74b519d",
  "kind": "theorem",
  "lexical_name": "det_updateRow_add_smul_self",
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
  "slug": "det-updaterow-add-smul-self--eb16e2577259ab9aac3a6fdb",
  "source": {
    "blob": "66f8b885e8ce08fecc06336d6a26d5eff6c15aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 473,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb16e2577259ab9aac3a6fdbd1406a480fbb8c9efb609cc960615ac9bbb4ce0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdce94f7-35da-efda-7bbd-952ca74b519d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_updateRow_add_smul_self (A : Matrix n n R) {i j : n} (hij : i ≠ j) (c : R) :
    det (updateRow A i (A i + c • A j)) = det A := by
  simp [det_updateRow_add, det_updateRow_smul,
    det_zero_of_row_eq hij (updateRow_self.trans (updateRow_ne hij.symm).symm)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f8b885e8ce08fecc06336d6a26d5eff6c15aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
