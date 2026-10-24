# mapAccumr_bisim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:922f0153-caec-2310-4e28-27d2d4f49444",
  "kind": "theorem",
  "lexical_name": "mapAccumr_bisim",
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
  "slug": "mapaccumr-bisim--114a7610249a85c6a48b8a52",
  "source": {
    "blob": "8561ab0dd90a9638b160dc4d521f724157313d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114a7610249a85c6a48b8a5292f32f6336c681d2829a230a453c9e7596e5ebd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:922f0153-caec-2310-4e28-27d2d4f49444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapAccumr_bisim {f₁ : α → σ₁ → σ₁ × β} {f₂ : α → σ₂ → σ₂ × β} {s₁ : σ₁} {s₂ : σ₂}
      (R : σ₁ → σ₂ → Prop) (h₀ : R s₁ s₂)
      (hR : ∀ {s q} a, R s q → R (f₁ a s).1 (f₂ a q).1 ∧ (f₁ a s).2 = (f₂ a q).2) :
    R (mapAccumr f₁ xs s₁).fst (mapAccumr f₂ xs s₂).fst
    ∧ (mapAccumr f₁ xs s₁).snd = (mapAccumr f₂ xs s₂).snd := by
  induction xs using Vector.revInductionOn generalizing s₁ s₂
  next => exact ⟨h₀, rfl⟩
  next xs x ih =>
    rcases (hR x h₀) with ⟨hR, _⟩
    simp only [mapAccumr_snoc, ih hR, true_and]
    congr 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8561ab0dd90a9638b160dc4d521f724157313d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
