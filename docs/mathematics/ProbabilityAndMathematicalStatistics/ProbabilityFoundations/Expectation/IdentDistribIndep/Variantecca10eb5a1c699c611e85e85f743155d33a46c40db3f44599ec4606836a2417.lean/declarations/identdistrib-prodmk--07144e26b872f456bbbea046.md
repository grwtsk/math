# IdentDistrib.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00853894-5c4b-97ce-f1e7-6239edf87af6",
  "kind": "lemma",
  "lexical_name": "IdentDistrib.prodMk",
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
  "slug": "identdistrib-prodmk--07144e26b872f456bbbea046",
  "source": {
    "blob": "4fa0b26dacd47b8f3232c0c7c58b9b0a95d23ccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantecca10eb5a1c699c611e85e85f743155d33a46c40db3f44599ec4606836a2417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07144e26b872f456bbbea046181d0c4c24d88cee18660ace5299e8a37954001b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantecca10eb5a1c699c611e85e85f743155d33a46c40db3f44599ec4606836a2417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00853894-5c4b-97ce-f1e7-6239edf87af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IdentDistrib.prodMk [IsFiniteMeasure μ]
    {X : Ω → E} {Y : Ω → F} {Z : Ω' → E} {W : Ω' → F}
    (hXZ : IdentDistrib X Z μ ν) (hYW : IdentDistrib Y W μ ν)
    (hXY : X ⟂ᵢ[μ] Y) (hZW : Z ⟂ᵢ[ν] W) :
    IdentDistrib (fun ω ↦ (X ω, Y ω)) (fun ω' ↦ (Z ω', W ω')) μ ν where
  aemeasurable_fst := hXZ.aemeasurable_fst.prodMk hYW.aemeasurable_fst
  aemeasurable_snd := hXZ.aemeasurable_snd.prodMk hYW.aemeasurable_snd
  map_eq := by
    have : IsFiniteMeasure ν := by
      have : IsFiniteMeasure (ν.map Z) := by rw [← hXZ.map_eq]; infer_instance
      exact Measure.isFiniteMeasure_of_map hXZ.aemeasurable_snd
    rw [hXY.map_prod_eq_prod_map_map hXZ.aemeasurable_fst hYW.aemeasurable_fst,
      hZW.map_prod_eq_prod_map_map hXZ.aemeasurable_snd hYW.aemeasurable_snd,
      hXZ.map_eq, hYW.map_eq]

/-- If `(X i)` and `(Y i)` are families of independent random variables indexed by a countable
type `ι`, such that for each `i`, `X i` and `Y i` are identically distributed, then the products
`X` and `Y` are identically distributed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantecca10eb5a1c699c611e85e85f743155d33a46c40db3f44599ec4606836a2417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantecca10eb5a1c699c611e85e85f743155d33a46c40db3f44599ec4606836a2417.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fa0b26dacd47b8f3232c0c7c58b9b0a95d23ccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
