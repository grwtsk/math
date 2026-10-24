# condVar_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d8c915a-a84a-16d0-e5f6-6f1fa98bf84e",
  "kind": "lemma",
  "lexical_name": "condVar_smul",
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
  "slug": "condvar-smul--1b45365a9723a2be4917ba3b",
  "source": {
    "blob": "7ea338ccc3360458c5380b13a51e8cc9cffab8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b45365a9723a2be4917ba3b136d8124b105a55e62f2a5b710f747b493d1461e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8c915a-a84a-16d0-e5f6-6f1fa98bf84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condVar_smul (c : ℝ) (X : Ω → ℝ) : Var[c • X; μ | m] =ᵐ[μ] c ^ 2 • Var[X; μ | m] := by
  calc
    Var[c • X; μ | m]
    _ =ᵐ[μ] μ[c ^ 2 • (X - μ[X | m]) ^ 2 | m] := by
      rw [condVar]
      refine condExp_congr_ae ?_
      filter_upwards [condExp_smul (m := m) c X] with ω hω
      simp [hω, ← mul_sub, mul_pow]
    _ =ᵐ[μ] c ^ 2 • Var[X; μ | m] := condExp_smul ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ea338ccc3360458c5380b13a51e8cc9cffab8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
