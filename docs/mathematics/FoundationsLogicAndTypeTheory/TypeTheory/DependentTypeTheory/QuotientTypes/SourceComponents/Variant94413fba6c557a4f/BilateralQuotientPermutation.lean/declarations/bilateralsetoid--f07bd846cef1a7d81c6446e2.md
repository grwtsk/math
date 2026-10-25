# bilateralSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e5ec96b58776ef2623e37a0c7ed5d917f277a831a9dd8f265ddbdeb98a29f5f",
  "kind": "def",
  "lexical_name": "bilateralSetoid",
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
  "slug": "bilateralsetoid--f07bd846cef1a7d81c6446e2",
  "source": {
    "blob": "513d4013203a81a8bbf05ab2e2542ba22d0ee0ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f07bd846cef1a7d81c6446e2342a8b6474321efcd06d86c24701cc0794248645",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e5ec96b58776ef2623e37a0c7ed5d917f277a831a9dd8f265ddbdeb98a29f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bilateralSetoid
    (G : ReversibleSystem State Resolution) : Setoid State where
  r := G.BilateralCausalEquivalent
  iseqv := {
    refl := by
      intro x
      exact ⟨fun _ _ => rfl, fun _ _ => rfl⟩
    symm := by
      intro x y h
      exact
        ⟨fun t ρ => (h.1 t ρ).symm,
          fun t ρ => (h.2 t ρ).symm⟩
    trans := by
      intro x y z hxy hyz
      exact
        ⟨fun t ρ => (hxy.1 t ρ).trans (hyz.1 t ρ),
          fun t ρ => (hxy.2 t ρ).trans (hyz.2 t ρ)⟩
  }

/-- Forward-only causal quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `513d4013203a81a8bbf05ab2e2542ba22d0ee0ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
