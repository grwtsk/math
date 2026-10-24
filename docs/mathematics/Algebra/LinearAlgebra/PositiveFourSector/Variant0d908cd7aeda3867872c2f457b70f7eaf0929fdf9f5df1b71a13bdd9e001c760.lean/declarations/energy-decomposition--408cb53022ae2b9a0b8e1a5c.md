# energy_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a350c82a-af25-fdce-2fe3-95136c26e94a",
  "kind": "theorem",
  "lexical_name": "energy_decomposition",
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
  "slug": "energy-decomposition--408cb53022ae2b9a0b8e1a5c",
  "source": {
    "blob": "c4b6922a2afbc424a311bb503d6cb44e4124edd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 237,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408cb53022ae2b9a0b8e1a5cf75e13bade53da3c7def53b3f2209c8ec17d6254",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a350c82a-af25-fdce-2fe3-95136c26e94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_decomposition (x : V) :
    G.form x x =
      G.form (C.sectorPP x) (C.sectorPP x) +
      G.form (C.sectorPM x) (C.sectorPM x) +
      G.form (C.sectorMP x) (C.sectorMP x) +
      G.form (C.sectorMM x) (C.sectorMM x) := by
  calc
    G.form x x =
        G.form
          (C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x)
          (C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x) := by
            simp only [sectorPP_apply, sectorPM_apply, sectorMP_apply, sectorMM_apply,
              C.involutions.four_sector_decomposition x]
    _ =
        G.form (C.sectorPP x) (C.sectorPP x) +
        G.form (C.sectorPM x) (C.sectorPM x) +
        G.form (C.sectorMP x) (C.sectorMP x) +
        G.form (C.sectorMM x) (C.sectorMM x) :=
      G.four_sum_energy
        (C.sectorPP x) (C.sectorPM x) (C.sectorMP x) (C.sectorMM x)
        (C.orthogonal_PP_PM x x)
        (C.orthogonal_PP_MP x x)
        (C.orthogonal_PP_MM x x)
        (C.orthogonal_PM_MP x x)
        (C.orthogonal_PM_MM x x)
        (C.orthogonal_MP_MM x x)

/-- The positive geometry carried by the distinguished (+,-) sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b6922a2afbc424a311bb503d6cb44e4124edd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
