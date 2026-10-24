# dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adda1827-177c-131a-d016-2d6878e7ff35",
  "kind": "theorem",
  "lexical_name": "dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy",
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
  "slug": "dyadicchifourtwistedmertensenergy-iff-modfourdiscrepancy--11040a7bcd532526f9c6948b",
  "source": {
    "blob": "a786e01e3018eff6dc3d8165971ac537a28fecac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 180,
    "path": "GRWTSK/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11040a7bcd532526f9c6948bbc0db697d0c664132fa52fd3a8c3d6451f2b732e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adda1827-177c-131a-d016-2d6878e7ff35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy :
    DyadicChiFourTwistedMertensSquareRootEnergy ↔
      DyadicModFourMertensDiscrepancySquareRootEnergy := by
  constructor
  · intro hChi δ hδ
    obtain ⟨C, hC, hscale⟩ := hChi δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    have h := hscale j b hb
    rwa [chiFourTwistedMertensPrefix_eq_modFourDiscrepancy,
      Complex.norm_real, Real.norm_eq_abs, sq_abs] at h
  · intro hDisc δ hδ
    obtain ⟨C, hC, hscale⟩ := hDisc δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [chiFourTwistedMertensPrefix_eq_modFourDiscrepancy,
      Complex.norm_real, Real.norm_eq_abs, sq_abs]
    exact hscale j b hb

/-- Stronger common square-root-energy statement for both unit residue classes
modulo four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a786e01e3018eff6dc3d8165971ac537a28fecac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
