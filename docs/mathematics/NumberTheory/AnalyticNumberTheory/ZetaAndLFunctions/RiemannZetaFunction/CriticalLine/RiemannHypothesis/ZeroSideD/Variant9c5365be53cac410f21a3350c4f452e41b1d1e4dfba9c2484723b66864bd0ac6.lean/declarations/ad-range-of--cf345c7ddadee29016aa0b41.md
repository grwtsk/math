# aD_range_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e4e145a-1825-24b5-0719-7da5b4699d70",
  "kind": "theorem",
  "lexical_name": "aD_range_of",
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
  "slug": "ad-range-of--cf345c7ddadee29016aa0b41",
  "source": {
    "blob": "cb853020d7bc09c9feb57663ac9bc0c3956fa145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf345c7ddadee29016aa0b41e3b7d98e61eed8472d566a5a9156b92c30ef4e46",
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

Occurrence: `result:9e4e145a-1825-24b5-0719-7da5b4699d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aD_range_of (hP : P.Valid) {T : ℝ} (h8 : 8 * P.w ≤ P.L T) (h4π : 4 * π * P.w ≤ P.L T) :
    1 / 2 ≤ (P.atD T).a T ∧ (P.atD T).a T ≤ 1 := by
  have hW := admWindow_params hP h8
  rw [atD_a_eq_av hP]
  refine ⟨?_, hW.av_le_one⟩
  calc (1 : ℝ) / 2 ≤ AdmWindow.bv (P.phiD T) (P.L T) :=
        bv_phiD_ge_half hP.taper hP.lam_pos hP.lam_le_one hP.one_le_w h8 h4π
    _ ≤ AdmWindow.av (P.phiD T) (P.L T) := hW.bv_le_av

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb853020d7bc09c9feb57663ac9bc0c3956fa145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
