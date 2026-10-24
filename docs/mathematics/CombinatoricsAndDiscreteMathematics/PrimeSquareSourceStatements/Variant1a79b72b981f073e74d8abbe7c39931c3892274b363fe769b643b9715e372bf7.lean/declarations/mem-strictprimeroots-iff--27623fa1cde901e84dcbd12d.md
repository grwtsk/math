# mem_strictPrimeRoots_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8e87af7cc3adc00a82d236bc3498c309ce30fc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec06a7a4-f2a4-1147-e04f-603441bf8446",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c2ff106-a5f6-97f2-dfa5-347d6fd76cef",
  "kind": "theorem",
  "lexical_name": "mem_strictPrimeRoots_iff",
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
  "slug": "mem-strictprimeroots-iff--27623fa1cde901e84dcbd12d",
  "source": {
    "blob": "d8e87af7cc3adc00a82d236bc3498c309ce30fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27623fa1cde901e84dcbd12d7d2eaacb85b82005ba037a9b99c8eaef74f95039",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c2ff106-a5f6-97f2-dfa5-347d6fd76cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_strictPrimeRoots_iff (A : ℝ) (p : ℕ) :
    p ∈ strictPrimeRoots A ↔ p.Prime ∧ (p : ℝ) < Real.exp A := by
  simp only [strictPrimeRoots, Finset.mem_filter, mem_closedPrimeRoots_iff]
  exact ⟨fun h => ⟨h.1.1, h.2⟩, fun h => ⟨⟨h.1, h.2.le⟩, h.2⟩⟩

/-- Squaring transports the strict source endpoint exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8e87af7cc3adc00a82d236bc3498c309ce30fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
