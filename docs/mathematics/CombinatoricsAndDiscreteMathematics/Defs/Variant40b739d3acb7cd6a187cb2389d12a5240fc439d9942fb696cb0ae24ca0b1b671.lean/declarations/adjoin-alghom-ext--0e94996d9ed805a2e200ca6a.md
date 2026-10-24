# adjoin_algHom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e8f961f-b1d9-9656-f34f-c2ba73dcb4a3",
  "kind": "theorem",
  "lexical_name": "adjoin_algHom_ext",
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
  "slug": "adjoin-alghom-ext--0e94996d9ed805a2e200ca6a",
  "source": {
    "blob": "ac6423e7967599e0afb376c2c40de2dc91d79817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 479,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e94996d9ed805a2e200ca6aeacf9ec47fb224e099e11d1b585ca2ee9ae291b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e8f961f-b1d9-9656-f34f-c2ba73dcb4a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_algHom_ext {s : Set E} ⦃φ₁ φ₂ : adjoin F s →ₐ[F] K⦄
    (h : ∀ x hx, φ₁ ⟨x, subset_adjoin _ _ hx⟩ = φ₂ ⟨x, subset_adjoin _ _ hx⟩) :
    φ₁ = φ₂ :=
  AlgHom.ext fun ⟨x, hx⟩ ↦ adjoin_induction _ h (fun _ ↦ φ₂.commutes _ ▸ φ₁.commutes _)
    (fun _ _ _ _ h₁ h₂ ↦ by convert congr_arg₂ (· + ·) h₁ h₂ <;> rw [← map_add] <;> rfl)
    (fun _ _ ↦ eq_on_inv₀ _ _)
    (fun _ _ _ _ h₁ h₂ ↦ by convert congr_arg₂ (· * ·) h₁ h₂ <;> rw [← map_mul] <;> rfl)
    hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6423e7967599e0afb376c2c40de2dc91d79817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
