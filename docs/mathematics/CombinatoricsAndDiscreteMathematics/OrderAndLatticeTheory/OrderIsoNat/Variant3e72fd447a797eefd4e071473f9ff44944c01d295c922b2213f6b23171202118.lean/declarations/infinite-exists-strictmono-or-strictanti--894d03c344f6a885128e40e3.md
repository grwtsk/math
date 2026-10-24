# Infinite.exists_strictMono_or_strictAnti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6025d1d6-8553-4ee5-a7dc-1f1381a4f843",
  "kind": "theorem",
  "lexical_name": "Infinite.exists_strictMono_or_strictAnti",
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
  "slug": "infinite-exists-strictmono-or-strictanti--894d03c344f6a885128e40e3",
  "source": {
    "blob": "319e154518f31d1ef48dc16fe1e54eea784d0478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:894d03c344f6a885128e40e3650399cf86eaa06011819a9790aa340707e5c52a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6025d1d6-8553-4ee5-a7dc-1f1381a4f843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Infinite.exists_strictMono_or_strictAnti (α : Type*) [LinearOrder α] [Infinite α] :
    ∃ f : ℕ → α, StrictMono f ∨ StrictAnti f := by
  let f := Infinite.natEmbedding α
  obtain ⟨g, hg⟩ := exists_increasing_or_nonincreasing_subseq (· < ·) f
  refine ⟨f ∘ g, ?_⟩
  rcases hg with hIncreasing | hNonincreasing
  · exact Or.inl hIncreasing
  · refine Or.inr <| fun m n hmn ↦ lt_of_le_of_ne ?_ ((f.injective.comp g.injective).ne ?_)
    · grind
    · grind

/-- A linear order that is well-founded in both directions is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319e154518f31d1ef48dc16fe1e54eea784d0478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
