# moving_majorant_le_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fce778f7-cecf-dbb6-8146-33c9eb6292cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7151a533-e3be-bc5e-ba6a-14aefbc240a0",
  "kind": "theorem",
  "lexical_name": "moving_majorant_le_uniform",
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
  "slug": "moving-majorant-le-uniform--ad48c812fd9d61574d53cd6b",
  "source": {
    "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad48c812fd9d61574d53cd6b3ff6f1232637920f34c5cb5c97d05689d6d19510",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7151a533-e3be-bc5e-ba6a-14aefbc240a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem moving_majorant_le_uniform (A : ℝ) (hA : 1 ≤ A) :
    4160 / (3 * A) * (Real.log A + 1) - 4160 / (3 * A ^ 2) ≤ 4160 / 3 := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hl : Real.log A + 1 ≤ A := by linarith [Real.log_le_sub_one_of_pos hp]
  have heq : 4160 / (3 * A) * A = (4160 / 3 : ℝ) := by field_simp
  calc
    _ ≤ 4160 / (3 * A) * A - 4160 / (3 * A ^ 2) :=
      sub_le_sub_right (mul_le_mul_of_nonneg_left hl (by positivity)) _
    _ ≤ 4160 / 3 := by rw [heq]; exact sub_le_self _ (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edaad9990003b638d717db8c0db2108e6cf46bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
