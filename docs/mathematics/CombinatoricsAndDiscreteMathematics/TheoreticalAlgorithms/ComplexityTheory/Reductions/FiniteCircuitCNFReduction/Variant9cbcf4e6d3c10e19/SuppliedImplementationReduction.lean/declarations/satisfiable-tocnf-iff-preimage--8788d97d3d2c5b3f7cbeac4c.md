# satisfiable_toCNF_iff_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:623861a6-52b4-2dc1-1ab3-08f1c8468732",
  "kind": "theorem",
  "lexical_name": "satisfiable_toCNF_iff_preimage",
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
  "slug": "satisfiable-tocnf-iff-preimage--8788d97d3d2c5b3f7cbeac4c",
  "source": {
    "blob": "fe6b2355645a2d8ebef3a1a5c2cdac4c50608753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8788d97d3d2c5b3f7cbeac4ca8588ba2bfd479fb36977d24a450f1b561457294",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623861a6-52b4-2dc1-1ab3-08f1c8468732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem satisfiable_toCNF_iff_preimage
    (circuit : Circuit n m)
    (algorithm : Bits n → Bits m)
    (hcorrect : circuit.Implements algorithm)
    (target : Bits m) :
    CNF.Satisfiable (circuit.toCNF target) ↔
      ∃ input, algorithm input = target := by
  constructor
  · rintro ⟨σ, hσ⟩
    have hformula := (circuit.toCNF_correct σ target).mp hσ
    refine ⟨readInput σ, ?_⟩
    calc
      algorithm (readInput σ) = circuit.readOutput σ :=
        (hcorrect.1 σ hformula.1).symm
      _ = target := hformula.2
  · rintro ⟨input, hinput⟩
    obtain ⟨σ, hread, htrace⟩ := hcorrect.2 input
    refine ⟨σ, (circuit.toCNF_correct σ target).mpr ⟨htrace, ?_⟩⟩
    calc
      circuit.readOutput σ = algorithm (readInput σ) :=
        hcorrect.1 σ htrace
      _ = algorithm input := by rw [hread]
      _ = target := hinput

/-- The reduction theorem specialized to a packaged compiled algorithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe6b2355645a2d8ebef3a1a5c2cdac4c50608753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
