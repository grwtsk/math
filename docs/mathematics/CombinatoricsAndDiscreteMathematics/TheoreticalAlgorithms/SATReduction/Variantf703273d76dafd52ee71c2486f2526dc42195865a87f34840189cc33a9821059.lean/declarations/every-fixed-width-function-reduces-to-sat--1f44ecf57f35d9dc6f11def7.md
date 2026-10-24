# every_fixed_width_function_reduces_to_sat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0029b54-f1d1-9aa3-6e68-362d25d136a2",
  "kind": "theorem",
  "lexical_name": "every_fixed_width_function_reduces_to_sat",
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
  "slug": "every-fixed-width-function-reduces-to-sat--1f44ecf57f35d9dc6f11def7",
  "source": {
    "blob": "42e24640674a6b58f6b5e4e96bc0fd17f9505c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 590,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f44ecf57f35d9dc6f11def740ef3eda60c658bbf323392fd71f8342b34e1cd9",
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

Occurrence: `result:e0029b54-f1d1-9aa3-6e68-362d25d136a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem every_fixed_width_function_reduces_to_sat
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m) :
    CNF.Satisfiable (truthTableCNF algorithm target) ↔
      ∃ input, algorithm input = target := by
  constructor
  · rintro ⟨σ, hσ⟩
    exact ⟨readInput σ,
      (truthTableCNF_correct algorithm target σ).mp hσ⟩
  · rintro ⟨input, hinput⟩
    refine ⟨inputAssignment input, ?_⟩
    apply (truthTableCNF_correct algorithm target
      (inputAssignment input)).mpr
    simpa using hinput

/-! ## Bijective functions have one SAT input projection -/

/-- A bijection has exactly one preimage for every target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e24640674a6b58f6b5e4e96bc0fd17f9505c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
