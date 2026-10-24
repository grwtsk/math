# psi_inverse_power_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:701d3bf0-22ac-5cde-10a4-50beb76fb3a9",
  "kind": "theorem",
  "lexical_name": "psi_inverse_power_intervalIntegrable",
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
  "slug": "psi-inverse-power-intervalintegrable--ea7748baaf5a45c245f4b9bf",
  "source": {
    "blob": "138889f831987ef434facaa7ec583ee83e9843b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7748baaf5a45c245f4b9bfd59cd8899468a612d907c30a35b14c19618cec73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:701d3bf0-22ac-5cde-10a4-50beb76fb3a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem psi_inverse_power_intervalIntegrable :
    IntervalIntegrable (fun y : ℝ => Chebyshev.psi y / y ^ (3 / 2 : ℝ)) volume 2 7 := by
  have h := (physicalXiDensity_head_intervalIntegrable.add
    y_inverse_power_intervalIntegrable).sub
      ((inverse_power_head_continuous.intervalIntegrable_of_Icc (by norm_num)).const_mul
        (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)))
  convert h using 1
  funext y
  unfold RH16ActualF7.physicalXiDensity shiftedActualChebyshev
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `138889f831987ef434facaa7ec583ee83e9843b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
