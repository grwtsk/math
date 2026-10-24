# det_fin_three_normalized_eq_secants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01914ebb-52aa-57b0-7919-eeec00da581d",
  "kind": "theorem",
  "lexical_name": "det_fin_three_normalized_eq_secants",
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
  "slug": "det-fin-three-normalized-eq-secants--4137d5a80dadd7f8d50ad511",
  "source": {
    "blob": "417665fc3af7b5009a9fd86a0d6751867872d726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4137d5a80dadd7f8d50ad5113851b2564cae1cd5140bd76b7346c5f562f83998",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01914ebb-52aa-57b0-7919-eeec00da581d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_fin_three_normalized_eq_secants (a0 a1 a2 b0 b1 b2 : ℝ)
    (h01 : a1 - a0 ≠ 0) (h12 : a2 - a1 ≠ 0) :
    Matrix.det !![1, 1, 1; a0, a1, a2; b0, b1, b2] =
      (a1 - a0) * (a2 - a1) *
        ((b2 - b1) / (a2 - a1) - (b1 - b0) / (a1 - a0)) := by
  rw [det_fin_three_normalized_eq_differences]
  field_simp
  <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `417665fc3af7b5009a9fd86a0d6751867872d726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
