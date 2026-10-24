# iIndepFun.condexp_natural_ae_eq_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b098adb-dba7-64c2-8349-246a62bf509c",
  "kind": "theorem",
  "lexical_name": "iIndepFun.condexp_natural_ae_eq_of_lt",
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
  "slug": "iindepfun-condexp-natural-ae-eq-of-lt--5118b064d2a2b5a02ac247f7",
  "source": {
    "blob": "d3a1a410124880e5f3f0a6c9054e6cdd242956ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5118b064d2a2b5a02ac247f79d7a930a37f7e1cbed0a4e5c7f956609e49fb80d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b098adb-dba7-64c2-8349-246a62bf509c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.condexp_natural_ae_eq_of_lt [SecondCountableTopology β] [CompleteSpace β]
    [NormedSpace ℝ β] (hf : ∀ i, StronglyMeasurable (f i)) (hfi : iIndepFun (fun _ => mβ) f μ)
    (hij : i < j) : μ[f j|Filtration.natural f hf i] =ᵐ[μ] fun _ => μ[f j] :=
  condexp_indep_eq (hf j).measurable.comap_le (Filtration.le _ _)
    (comap_measurable <| f j).stronglyMeasurable (hfi.indep_comap_natural_of_lt hf hij)
set_option linter.uppercaseLean3 false in
#align probability_theory.Indep_fun.condexp_natural_ae_eq_of_lt ProbabilityTheory.iIndepFun.condexp_natural_ae_eq_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a1a410124880e5f3f0a6c9054e6cdd242956ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
