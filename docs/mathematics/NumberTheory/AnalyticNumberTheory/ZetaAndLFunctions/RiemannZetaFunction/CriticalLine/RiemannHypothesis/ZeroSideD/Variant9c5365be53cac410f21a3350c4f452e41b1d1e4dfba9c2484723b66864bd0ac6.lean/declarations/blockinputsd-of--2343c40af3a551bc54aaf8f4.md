# blockInputsD_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c411259b-d8c8-f0f9-8114-67decfb711d7",
  "kind": "theorem",
  "lexical_name": "blockInputsD_of",
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
  "slug": "blockinputsd-of--2343c40af3a551bc54aaf8f4",
  "source": {
    "blob": "cb853020d7bc09c9feb57663ac9bc0c3956fa145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2343c40af3a551bc54aaf8f4bd1e976d7d6eb9eff5ff36523408edafb79baec7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c411259b-d8c8-f0f9-8114-67decfb711d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockInputsD_of (Z : ZeroConfig) (hP : P.Valid) {T : ℝ} (h8 : 8 * P.w ≤ P.L T)
    (h4π : 4 * π * P.w ≤ P.L T) : Assembly.BlockInputs Z (P.atD T) T := by
  have hL : 0 < P.L T := by linarith [hP.one_le_w]
  have ha := (aD_range_of hP h8 h4π).1
  exact ZeroSide.blockInputsAt Z (P.atD T) T (fun z => GzGp.phiHat_conj _ T z)
    (fun r => GzGp.phiHat_ofReal _ T r) (poissonSqD hP h8) hL
    (mul_pos (by linarith) (pow_pos hL 2))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb853020d7bc09c9feb57663ac9bc0c3956fa145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
