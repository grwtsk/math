# bijective_truthTable_has_unique_sat_input

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82cdbbb3859438100a5c790ef9277ef2e224f188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 635,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9d836d4-27a8-b1a6-3b5a-cad2fcaf5326",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ed5d140-3221-117a-77b7-937a53fc817a",
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
  "slug": "bijective-truthtable-has-unique-sat-input--042e4d8af3fbeb575e526dac",
  "source": {
    "blob": "82cdbbb3859438100a5c790ef9277ef2e224f188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 635,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:042e4d8af3fbeb575e526dac44117651bcaea24eac9460b4e4c14399367c0fe4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ed5d140-3221-117a-77b7-937a53fc817a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–660.

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

end BitMatrix.Reduction.SAT
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82cdbbb3859438100a5c790ef9277ef2e224f188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
