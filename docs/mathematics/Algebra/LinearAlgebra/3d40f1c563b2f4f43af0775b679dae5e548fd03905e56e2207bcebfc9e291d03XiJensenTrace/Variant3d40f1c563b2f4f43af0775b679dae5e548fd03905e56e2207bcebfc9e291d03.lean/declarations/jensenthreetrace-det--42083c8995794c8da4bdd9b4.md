# jensenThreeTrace_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "681117ffc168e44ee61400a4a62a5998f7cc4447",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:174a0125-a9b5-f253-da08-1929aaa79c00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9955f149-06b5-806a-709d-d7bb25cadfa2",
  "kind": "theorem",
  "lexical_name": "jensenThreeTrace_det",
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
  "slug": "jensenthreetrace-det--42083c8995794c8da4bdd9b4",
  "source": {
    "blob": "681117ffc168e44ee61400a4a62a5998f7cc4447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42083c8995794c8da4bdd9b42d97c4c9806db44872747e57697bc57368156f7d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9955f149-06b5-806a-709d-d7bb25cadfa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenThreeTrace_det :
    jensenThreeTrace.det = (314928 : ℝ) / (25 * coefficient 3 ^ 4) *
      (75 * coefficient 1 ^ 2 * coefficient 2 ^ 2 -
        50 * coefficient 1 ^ 3 * coefficient 3 -
        120 * coefficient 0 * coefficient 2 ^ 3 -
        9 * coefficient 0 ^ 2 * coefficient 3 ^ 2 +
        90 * coefficient 0 * coefficient 1 * coefficient 2 * coefficient 3) := by
  rw [jensenThreeTrace, cubicHermite_det]
  have ha3 := (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 3).ne'
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681117ffc168e44ee61400a4a62a5998f7cc4447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
