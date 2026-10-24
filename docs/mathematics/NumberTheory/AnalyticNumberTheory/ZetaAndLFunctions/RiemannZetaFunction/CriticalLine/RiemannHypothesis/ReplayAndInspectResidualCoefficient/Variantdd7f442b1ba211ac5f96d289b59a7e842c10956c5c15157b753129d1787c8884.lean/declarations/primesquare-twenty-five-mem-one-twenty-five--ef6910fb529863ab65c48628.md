# primeSquare_twenty_five_mem_one_twenty_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afa3fd9c-aa87-1861-3e42-8170ebec08b7",
  "kind": "theorem",
  "lexical_name": "primeSquare_twenty_five_mem_one_twenty_five",
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
  "slug": "primesquare-twenty-five-mem-one-twenty-five--ef6910fb529863ab65c48628",
  "source": {
    "blob": "2fcb6698f21c7e154bbd5f9dbf6fb0c11259d17b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 274,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Variantdd7f442b1ba211ac5f96d289b59a7e842c10956c5c15157b753129d1787c8884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef6910fb529863ab65c486284dcae43367fdd5e4d6f6e4152673e79111655575",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Variantdd7f442b1ba211ac5f96d289b59a7e842c10956c5c15157b753129d1787c8884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa3fd9c-aa87-1861-3e42-8170ebec08b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquare_twenty_five_mem_one_twenty_five :
    25 ∈ residualPrimeSquareInventory 125 := by
  apply mem_residualPrimeSquareInventory.mpr
  refine ⟨?_, by norm_num, 5, by decide, by norm_num, Or.inr (by norm_num)⟩
  exact mem_properCoprimeDivisorInventory.mpr
    ⟨by norm_num [Nat.mem_divisors], by norm_num, by norm_num, by decide⟩

end

end FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient

open FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory")
#check @residualPrimeSquareInventory

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory")
#print axioms residualPrimeSquareInventory

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff")
#check @residualPrimeSquareCoeff

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff")
#print axioms residualPrimeSquareCoeff

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "mem_residualPrimeSquareInventory")
#check @mem_residualPrimeSquareInventory

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "mem_residualPrimeSquareInventory")
#print axioms mem_residualPrimeSquareInventory

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "mem_residualPrimeSquareInventory")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_subset")
#check @residualPrimeSquareInventory_subset

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_subset")
#print axioms residualPrimeSquareInventory_subset

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_subset")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_nonneg")
#check @residualPrimeSquareCoeff_nonneg

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_nonneg")
#print axioms residualPrimeSquareCoeff_nonneg

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_nonneg")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_le_proper")
#check @residualPrimeSquareCoeff_le_proper

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_le_proper")
#print axioms residualPrimeSquareCoeff_le_proper

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_le_proper")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_le_log")
#check @residualPrimeSquareCoeff_le_log

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_le_log")
#print axioms residualPrimeSquareCoeff_le_log

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_le_log")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "product_ge_twenty_five_of_mem")
#check @product_ge_twenty_five_of_mem

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "product_ge_twenty_five_of_mem")
#print axioms product_ge_twenty_five_of_mem

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "product_ge_twenty_five_of_mem")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_empty_of_lt_twenty_five")
#check @residualPrimeSquareInventory_empty_of_lt_twenty_five

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_empty_of_lt_twenty_five")
#print axioms residualPrimeSquareInventory_empty_of_lt_twenty_five

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_empty_of_lt_twenty_five")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five")
#check @residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five")
#print axioms residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_twenty_five")
#check @residualPrimeSquareInventory_twenty_five

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_twenty_five")
#print axioms residualPrimeSquareInventory_twenty_five

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareInventory_twenty_five")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_twenty_five")
#check @residualPrimeSquareCoeff_twenty_five

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_twenty_five")
#print axioms residualPrimeSquareCoeff_twenty_five

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_twenty_five")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_twenty_five_pos")
#check @residualPrimeSquareCoeff_twenty_five_pos

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_twenty_five_pos")
#print axioms residualPrimeSquareCoeff_twenty_five_pos

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "residualPrimeSquareCoeff_twenty_five_pos")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "primeSquare_twenty_five_mem_one_twenty_five")
#check @primeSquare_twenty_five_mem_one_twenty_five

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "primeSquare_twenty_five_mem_one_twenty_five")
#print axioms primeSquare_twenty_five_mem_one_twenty_five

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient." ++
  "primeSquare_twenty_five_mem_one_twenty_five")

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Variantdd7f442b1ba211ac5f96d289b59a7e842c10956c5c15157b753129d1787c8884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Variantdd7f442b1ba211ac5f96d289b59a7e842c10956c5c15157b753129d1787c8884.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fcb6698f21c7e154bbd5f9dbf6fb0c11259d17b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
