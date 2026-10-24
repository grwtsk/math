# epi_π_app_zero_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bbf001b-0fec-3814-263a-900047d75403",
  "kind": "lemma",
  "lexical_name": "epi_π_app_zero_of_epi",
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
  "slug": "epi-app-zero-of-epi--7c2b67990bd737fc025ac6b2",
  "source": {
    "blob": "85956c867569556b6f93dfb3a73d544e72bae1c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c2b67990bd737fc025ac6b21f0333526268a36578523c2485127e00ffe9f1f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bbf001b-0fec-3814-263a-900047d75403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_π_app_zero_of_epi [HasSheafify (coherentTopology C) (Type v)]
    [Balanced (Sheaf (coherentTopology C) (Type v))]
    [(coherentTopology C).WEqualsLocallyBijective (Type v)]
    {F : ℕᵒᵖ ⥤ Sheaf (coherentTopology C) (Type v)}
    {c : Cone F} (hc : IsLimit c)
    (hF : ∀ n, Epi (F.map (homOfLE (Nat.le_succ n)).op)) : Epi (c.π.app ⟨0⟩) := by
  simp_rw [← Sheaf.isLocallySurjective_iff_epi'] at hF ⊢
  exact isLocallySurjective_π_app_zero_of_isLocallySurjective_map hc hF h

end CategoryTheory.coherentTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85956c867569556b6f93dfb3a73d544e72bae1c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
