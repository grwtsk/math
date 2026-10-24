# piAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28c582c664f8b01967c8ffe00d04eb5d767e68e56a6e64703fb511d41889ca3e",
  "kind": "def",
  "lexical_name": "piAntidiag",
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
  "slug": "piantidiag--4bc890fca7bb3e2d797ab96d",
  "source": {
    "blob": "deb31b47a01b7883b0b9e3275487615e45b5c334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bc890fca7bb3e2d797ab96d2005ee85b18cd9f4fbf122de231de0ec3d7a94a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28c582c664f8b01967c8ffe00d04eb5d767e68e56a6e64703fb511d41889ca3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piAntidiag (s : Finset ι) (n : μ) : Finset (ι → μ) := by
  refine (Fintype.truncEquivFinOfCardEq <| Fintype.card_coe s).lift
    (fun e ↦ (finAntidiagonal s.card n).map ⟨fun f i ↦ if hi : i ∈ s then f (e ⟨i, hi⟩) else 0, ?_⟩)
    fun e₁ e₂ ↦ ?_
  · rw [Injective]
    rintro f g hfg
    ext i
    simpa using congr_fun hfg (e.symm i)
  · ext f
    simp only [mem_map, mem_finAntidiagonal]
    refine Equiv.exists_congr ((e₁.symm.trans e₂).arrowCongr <| .refl _) fun g ↦ ?_
    have := Fintype.sum_equiv (e₂.symm.trans e₁) _ g fun _ ↦ rfl
    simp_all

variable {s : Finset ι} {n : μ} {f : ι → μ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb31b47a01b7883b0b9e3275487615e45b5c334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
