# sourceBump_third_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a89cb505-94a6-badc-87bc-fe94b755b2a7",
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
  "slug": "sourcebump-third-square-integral--81109ef6b1c01c2531941c30",
  "source": {
    "blob": "17cfba409322d52ea0a13def8b67a5a35e98eb5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant13a271248243a58f424c324ab9afbdd78424c3d5a9267d7cca995b64be7188c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81109ef6b1c01c2531941c303942083e7a9237f33e9f488c812eff5d6f9a8436",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant13a271248243a58f424c324ab9afbdd78424c3d5a9267d7cca995b64be7188c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a89cb505-94a6-badc-87bc-fe94b755b2a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant13a271248243a58f424c324ab9afbdd78424c3d5a9267d7cca995b64be7188c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant13a271248243a58f424c324ab9afbdd78424c3d5a9267d7cca995b64be7188c9.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17cfba409322d52ea0a13def8b67a5a35e98eb5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
