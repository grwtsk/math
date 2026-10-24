# generate_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87199760-86d0-15cb-69c4-6467f01711b2",
  "kind": "theorem",
  "lexical_name": "generate_inter",
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
  "slug": "generate-inter--8b69a25442af1b1a8af99ed3",
  "source": {
    "blob": "3f58d006d5570e35dfb85d57c9a3424fd85c5b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 721,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b69a25442af1b1a8af99ed327eaece184efdde5889a787ea7878809adcdd852",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87199760-86d0-15cb-69c4-6467f01711b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generate_inter {s : Set (Set α)} (hs : IsPiSystem s) {t₁ t₂ : Set α}
    (ht₁ : (generate s).Has t₁) (ht₂ : (generate s).Has t₂) : (generate s).Has (t₁ ∩ t₂) :=
  have : generate s ≤ (generate s).restrictOn ht₂ :=
    generate_le _ fun s₁ hs₁ =>
      have : (generate s).Has s₁ := GenerateHas.basic s₁ hs₁
      have : generate s ≤ (generate s).restrictOn this :=
        generate_le _ fun s₂ hs₂ =>
          show (generate s).Has (s₂ ∩ s₁) from
            (s₂ ∩ s₁).eq_empty_or_nonempty.elim (fun h => h.symm ▸ GenerateHas.empty) fun h =>
              GenerateHas.basic _ <| hs _ hs₂ _ hs₁ h
      have : (generate s).Has (t₂ ∩ s₁) := this _ ht₂
      show (generate s).Has (s₁ ∩ t₂) by rwa [inter_comm]
  this _ ht₁
#align measurable_space.dynkin_system.generate_inter MeasurableSpace.DynkinSystem.generate_inter

/-- **Dynkin's π-λ theorem**:
  Given a collection of sets closed under binary intersections, then the Dynkin system it
  generates is equal to the σ-algebra it generates.
  This result is known as the π-λ theorem.
  A collection of sets closed under binary intersection is called a π-system (often requiring
  additionally that it is non-empty, but we drop this condition in the formalization).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f58d006d5570e35dfb85d57c9a3424fd85c5b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
