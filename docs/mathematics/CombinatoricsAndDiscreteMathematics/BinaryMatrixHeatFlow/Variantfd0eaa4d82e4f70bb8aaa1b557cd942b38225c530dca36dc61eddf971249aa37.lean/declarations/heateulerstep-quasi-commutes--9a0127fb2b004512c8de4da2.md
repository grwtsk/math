# heatEulerStep_quasi_commutes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "264e701eb1940a933fc7eda0dba44817cf56cd19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d0a7f44-87d5-1468-1690-cb4713ae5b61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84b597b7-d466-de3e-562e-f67a3d322341",
  "kind": "theorem",
  "lexical_name": "heatEulerStep_quasi_commutes",
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
  "slug": "heateulerstep-quasi-commutes--9a0127fb2b004512c8de4da2",
  "source": {
    "blob": "264e701eb1940a933fc7eda0dba44817cf56cd19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a0127fb2b004512c8de4da2562d77e3def762888158057ac16f3a186e7f2cbb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84b597b7-d466-de3e-562e-f67a3d322341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatEulerStep_quasi_commutes
    (η : ℝ)
    (f : Fine → ℝ) :
    ‖Q.zoom (heatEulerStep Q.Lf η f) -
        heatEulerStep Q.Lc η (Q.zoom f)‖ ≤
      |η| * Q.error * ‖f‖ := by
  have hcomm := Q.quasi_commutes f
  have hid := Q.heatEulerStep_commutator_identity η f
  rw [hid]
  have hnorm :
      ‖(fun x => -η * Q.laplacianCommutator f x)‖ =
        |η| * ‖Q.laplacianCommutator f‖ := by
    calc
      ‖(fun x => -η * Q.laplacianCommutator f x)‖
          = ‖(-η : ℝ) • Q.laplacianCommutator f‖ := by
              rfl
      _ = ‖(-η : ℝ)‖ * ‖Q.laplacianCommutator f‖ :=
              norm_smul _ _
      _ = |η| * ‖Q.laplacianCommutator f‖ := by
              simp [Real.norm_eq_abs]
  rw [hnorm]
  calc
    |η| * ‖Q.laplacianCommutator f‖
        ≤ |η| * (Q.error * ‖f‖) := by
            exact mul_le_mul_of_nonneg_left hcomm (abs_nonneg η)
    _ = |η| * Q.error * ‖f‖ := by
            ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264e701eb1940a933fc7eda0dba44817cf56cd19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
