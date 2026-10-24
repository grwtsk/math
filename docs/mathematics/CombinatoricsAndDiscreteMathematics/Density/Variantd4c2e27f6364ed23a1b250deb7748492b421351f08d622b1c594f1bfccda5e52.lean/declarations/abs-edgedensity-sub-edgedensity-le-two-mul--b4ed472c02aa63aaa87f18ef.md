# abs_edgeDensity_sub_edgeDensity_le_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d96540e7-2b6b-f28c-f809-8d43cc096b11",
  "kind": "theorem",
  "lexical_name": "abs_edgeDensity_sub_edgeDensity_le_two_mul",
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
  "slug": "abs-edgedensity-sub-edgedensity-le-two-mul--b4ed472c02aa63aaa87f18ef",
  "source": {
    "blob": "405b8ea2e8f69ac31da5032e8187324a14fc27d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 232,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ed472c02aa63aaa87f18ef1518817b53209a0a57ec9275b85f04ca4b46f3c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d96540e7-2b6b-f28c-f809-8d43cc096b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_edgeDensity_sub_edgeDensity_le_two_mul (hs : s₂ ⊆ s₁) (ht : t₂ ⊆ t₁) (hδ : 0 ≤ δ)
    (hscard : (1 - δ) * #s₁ ≤ #s₂) (htcard : (1 - δ) * #t₁ ≤ #t₂) :
    |(edgeDensity r s₂ t₂ : 𝕜) - edgeDensity r s₁ t₁| ≤ 2 * δ := by
  rcases lt_or_le δ 1 with h | h
  · exact (abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq r hs ht hδ h hscard htcard).trans
      ((sub_le_self_iff _).2 <| sq_nonneg δ)
  rw [two_mul]
  refine (abs_sub _ _).trans (add_le_add (le_trans ?_ h) (le_trans ?_ h)) <;>
    · rw [abs_of_nonneg]
      · exact mod_cast edgeDensity_le_one r _ _
      · exact mod_cast edgeDensity_nonneg r _ _

end Asymmetric

section Symmetric

variable {r : α → α → Prop} [DecidableRel r] {s t : Finset α} {a b : α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `405b8ea2e8f69ac31da5032e8187324a14fc27d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
