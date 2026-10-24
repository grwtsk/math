# sourceBump_third_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e47f76978795cf64855e75a206f3ccaf948f258",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:751787d6-42c5-d670-3232-21e5fc577d10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83a7ff3e-48e6-5ff9-aff2-5cc312280dbf",
  "kind": "theorem",
  "lexical_name": "sourceBump_third_square_integral",
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
  "slug": "sourcebump-third-square-integral--b4adb310d7404b133be9a070",
  "source": {
    "blob": "0e47f76978795cf64855e75a206f3ccaf948f258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4adb310d7404b133be9a070edd5b3d3aaa57b4c8b82b14bfc0055bb76935903",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83a7ff3e-48e6-5ff9-aff2-5cc312280dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceBump_third_square_integral :
    (∫ x : ℝ, (deriv (deriv (deriv sourceBump)) x) ^ 2) = (65536 / 77 : ℝ) := by
  have heq : (fun x : ℝ ↦ (deriv (deriv (deriv sourceBump)) x) ^ 2) =
      (Icc (-1) 1).indicator (fun x ↦ unitThird x ^ 2) := by
    rw [sourceBump_third_eq_indicator]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [heq, zeroExtension_integral _ (-1) 1 (by norm_num)]
  exact unitThird_square_integral

/-- The actual source derivative's square is integrable, as a conclusion of C³ regularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e47f76978795cf64855e75a206f3ccaf948f258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
