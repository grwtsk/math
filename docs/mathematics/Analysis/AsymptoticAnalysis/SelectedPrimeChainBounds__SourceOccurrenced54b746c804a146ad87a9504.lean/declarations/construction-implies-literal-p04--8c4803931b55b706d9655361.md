# construction_implies_literal_P04

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5746c8afdcac168dc95ad31eaee9503f9551989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e962ec0-bf61-69b2-315d-cc1297fa60c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "d5746c8afdcac168dc95ad31eaee9503f9551989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/Analysis/Asymptotics/SelectedPrimeChainBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5260a8dc-f510-ab91-2db7-30daf68fb11f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6af55a0-84a2-8f12-15e2-52c9ac723d3b",
  "kind": "theorem",
  "lexical_name": "construction_implies_literal_P04",
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
  "slug": "construction-implies-literal-p04--8c4803931b55b706d9655361",
  "source": {
    "blob": "d5746c8afdcac168dc95ad31eaee9503f9551989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 58,
    "path": "GRWTSK/Analysis/Asymptotics/SelectedPrimeChainBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4803931b55b706d96553613ffd5a4392e0cecb30fc041d7aa5b7e0971f6a61",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6af55a0-84a2-8f12-15e2-52c9ac723d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem construction_implies_literal_P04 (constructed : Construction) : P04 := by
  obtain ⟨A,C,q,η,hC,hq,_hη,chains⟩ := constructed
  obtain ⟨C_M,hM,hPrime⟩ := PrimeHarmonicLog.prime_harmonic_logarithmic_estimate
  have hprime : ASClosure.PrimeHarmonicEstimate C_M := by
    intro T hT
    simpa only [harmonicMass,PPNC.harmonicMass,Obstruction.harmonicMass,one_div] using hPrime T hT
  apply amortized_completion_implies_P04
    (C₀ := 4+A.initialConstant) (C₁ := C*C_M)
    (a := A.initialExponent+1) (q := q+1)
    (d := C*C_M) (H := C*C_M*Real.log 2)
  · linarith [A.initialConstant_nonneg]
  · exact mul_nonneg hC hM
  · linarith [A.initialExponent_nonneg]
  · linarith
  · exact mul_nonneg hC hM
  · intro T hT
    obtain ⟨chain,hadmissible,hsteps⟩ := chains T hT
    let bc := OriginalClosure.budgetedChain chain hadmissible
    exact ⟨completion A C q η C_M T hC hM hprime hT bc hsteps⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/SelectedPrimeChainBounds.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5746c8afdcac168dc95ad31eaee9503f9551989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
