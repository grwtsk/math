# gramRefinement_surjective_of_range_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15f2a6aa-979c-bfbf-4ea2-9f974edf992c",
  "kind": "theorem",
  "lexical_name": "gramRefinement_surjective_of_range_eq",
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
  "slug": "gramrefinement-surjective-of-range-eq--2b41fc5d63f0af57ae29f9b6",
  "source": {
    "blob": "687e01c3fad4fae5202a73973d0a69e8449fa5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 193,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b41fc5d63f0af57ae29f9b6d440071ed15f4248dcd201ff7bec9048fc48494d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15f2a6aa-979c-bfbf-4ea2-9f974edf992c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramRefinement_surjective_of_range_eq (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (hV : finiteOrbit q I = finiteOrbit q K) :
    Function.Surjective (gramRefinement q hIK) := by
  intro y
  have hy : (sourceEquiv q K y : ComplexL2) ∈ finiteOrbit q I := by
    rw [hV]
    exact (sourceEquiv q K y).property
  obtain ⟨x, hx⟩ := (sourceEquiv q I).surjective ⟨sourceEquiv q K y, hy⟩
  refine ⟨x, common_source_uniqueness q K _ y ?_⟩
  calc
    (sourceEquiv q K (gramRefinement q hIK x) : ComplexL2) =
        (sourceEquiv q I x : ComplexL2) := quotientRefinement_state q hIK x
    _ = (sourceEquiv q K y : ComplexL2) :=
      congrArg (fun z : finiteOrbit q I => (z : ComplexL2)) hx

/-- On the actual normalized source and the actual closed prime-power inventory,
the compressed signed operator is an involution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `687e01c3fad4fae5202a73973d0a69e8449fa5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
