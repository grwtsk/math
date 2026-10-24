# primePower_four_mem_inventory_twenty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab7db483-98de-66ac-d451-d960caffab6e",
  "kind": "theorem",
  "lexical_name": "primePower_four_mem_inventory_twenty",
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
  "slug": "primepower-four-mem-inventory-twenty--e683a33bca493ca318b99ce0",
  "source": {
    "blob": "55a152acdafb670cebce4b04773e566dd277b58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e683a33bca493ca318b99ce06e0b28496116462bdbfe30c0923786547ee828be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab7db483-98de-66ac-d451-d960caffab6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePower_four_mem_inventory_twenty :
    4 ∈ properCoprimeDivisorInventory 20 := by
  exact mem_properCoprimeDivisorInventory.mpr
    ⟨by norm_num [Nat.mem_divisors], by norm_num, by norm_num, by decide⟩

end

end FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient


-- Independent exact exported-type and transitive-axiom review.
open FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory")
#check @properCoprimeDivisorInventory

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory")
#print axioms properCoprimeDivisorInventory

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff")
#check @properCoprimeDivisorCoeff

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff")
#print axioms properCoprimeDivisorCoeff

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "mem_properCoprimeDivisorInventory")
#check @mem_properCoprimeDivisorInventory

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "mem_properCoprimeDivisorInventory")
#print axioms mem_properCoprimeDivisorInventory

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "mem_properCoprimeDivisorInventory")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_subset_divisors")
#check @properCoprimeDivisorInventory_subset_divisors

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_subset_divisors")
#print axioms properCoprimeDivisorInventory_subset_divisors

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_subset_divisors")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "proper_coprime_six_ge_five")
#check @proper_coprime_six_ge_five

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "proper_coprime_six_ge_five")
#print axioms proper_coprime_six_ge_five

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "proper_coprime_six_ge_five")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "product_ge_ten_of_mem")
#check @product_ge_ten_of_mem

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "product_ge_ten_of_mem")
#print axioms product_ge_ten_of_mem

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "product_ge_ten_of_mem")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_nonneg")
#check @properCoprimeDivisorCoeff_nonneg

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_nonneg")
#print axioms properCoprimeDivisorCoeff_nonneg

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_nonneg")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_le_log")
#check @properCoprimeDivisorCoeff_le_log

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_le_log")
#print axioms properCoprimeDivisorCoeff_le_log

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_le_log")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_empty_of_lt_ten")
#check @properCoprimeDivisorInventory_empty_of_lt_ten

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_empty_of_lt_ten")
#print axioms properCoprimeDivisorInventory_empty_of_lt_ten

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_empty_of_lt_ten")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_eq_zero_of_lt_ten")
#check @properCoprimeDivisorCoeff_eq_zero_of_lt_ten

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_eq_zero_of_lt_ten")
#print axioms properCoprimeDivisorCoeff_eq_zero_of_lt_ten

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_eq_zero_of_lt_ten")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_ten")
#check @properCoprimeDivisorInventory_ten

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_ten")
#print axioms properCoprimeDivisorInventory_ten

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorInventory_ten")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_ten")
#check @properCoprimeDivisorCoeff_ten

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_ten")
#print axioms properCoprimeDivisorCoeff_ten

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_ten")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_ten_pos")
#check @properCoprimeDivisorCoeff_ten_pos

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_ten_pos")
#print axioms properCoprimeDivisorCoeff_ten_pos

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "properCoprimeDivisorCoeff_ten_pos")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "primePower_four_mem_inventory_twenty")
#check @primePower_four_mem_inventory_twenty

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "primePower_four_mem_inventory_twenty")
#print axioms primePower_four_mem_inventory_twenty

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient." ++
  "primePower_four_mem_inventory_twenty")

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a152acdafb670cebce4b04773e566dd277b58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
