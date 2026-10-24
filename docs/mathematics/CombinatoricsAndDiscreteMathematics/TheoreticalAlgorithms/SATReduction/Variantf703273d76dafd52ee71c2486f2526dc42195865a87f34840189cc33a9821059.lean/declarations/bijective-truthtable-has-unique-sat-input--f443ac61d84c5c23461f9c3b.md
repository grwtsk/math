# bijective_truthTable_has_unique_sat_input

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42cfe30b-8775-ccdd-ca8c-4e829a917b06",
  "kind": "theorem",
  "lexical_name": "bijective_truthTable_has_unique_sat_input",
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
  "slug": "bijective-truthtable-has-unique-sat-input--f443ac61d84c5c23461f9c3b",
  "source": {
    "blob": "42e24640674a6b58f6b5e4e96bc0fd17f9505c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 643,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f443ac61d84c5c23461f9c3bf6eb28e995e5c35e4dfc69d70ec372f9714bf69b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42cfe30b-8775-ccdd-ca8c-4e829a917b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_truthTable_has_unique_sat_input
    {n : Nat}
    (hash : Bits n → Bits n)
    (hbijective : Function.Bijective hash)
    (target : Bits n) :
    ∃! input : Bits n,
      ∃ σ, CNF.Holds σ (truthTableCNF hash target) ∧
        readInput (n := n) σ = input := by
  obtain ⟨input, hinput, hunique⟩ :=
    bijective_has_unique_preimage hash hbijective target
  have hsatisfiable : CNF.Satisfiable (truthTableCNF hash target) :=
    (every_fixed_width_function_reduces_to_sat hash target).mpr
      ⟨input, hinput⟩
  obtain ⟨σ, hσ⟩ := hsatisfiable
  refine ⟨readInput σ, ⟨σ, hσ, rfl⟩, ?_⟩
  intro other hother
  obtain ⟨τ, hτ, hread⟩ := hother
  have hσpre : hash (readInput σ) = target :=
    (truthTableCNF_correct hash target σ).mp hσ
  have hτpre : hash (readInput τ) = target :=
    (truthTableCNF_correct hash target τ).mp hτ
  calc
    other = readInput τ := hread.symm
    _ = readInput σ := hbijective.1 (hτpre.trans hσpre.symm)

end SATReduction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e24640674a6b58f6b5e4e96bc0fd17f9505c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
