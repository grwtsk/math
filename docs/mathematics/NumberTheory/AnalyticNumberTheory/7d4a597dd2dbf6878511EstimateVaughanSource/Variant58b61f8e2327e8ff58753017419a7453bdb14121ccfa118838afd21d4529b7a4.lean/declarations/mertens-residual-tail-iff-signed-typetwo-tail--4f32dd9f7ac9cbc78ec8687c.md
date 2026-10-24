# mertens_residual_tail_iff_signed_typeTwo_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c014f4-a3bb-d7d3-0b21-f8b066d609ec",
  "kind": "theorem",
  "lexical_name": "mertens_residual_tail_iff_signed_typeTwo_tail",
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
  "slug": "mertens-residual-tail-iff-signed-typetwo-tail--4f32dd9f7ac9cbc78ec8687c",
  "source": {
    "blob": "074c1e20ebe60583948f1c113c4365f9d309eefe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 203,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f32dd9f7ac9cbc78ec8687c1975bb5a1612bdd0e5ebb745ddd6847656c1a64c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c014f4-a3bb-d7d3-0b21-f8b066d609ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_residual_tail_iff_signed_typeTwo_tail :
    MertensResidualTailUpperBound ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A →
          typeTwoSource A ≤ D - shortMangoldtSource A - shortLogSource A +
            shortPlainSource A := by
  constructor
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    have heq := mertensResidual_eq_vaughan A (hR.trans hA)
    have hb := htail A hA
    linarith
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    have heq := mertensResidual_eq_vaughan A (hR.trans hA)
    have hb := htail A hA
    linarith

end

end EstimateVaughanSource
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c1e20ebe60583948f1c113c4365f9d309eefe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
