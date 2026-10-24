# ruzsa_covering_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67af7522-c9fb-6e2e-e563-53a81a7f4f68",
  "kind": "lemma",
  "lexical_name": "ruzsa_covering_mul",
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
  "slug": "ruzsa-covering-mul--7abf011aa1b3ee1d3516cc2f",
  "source": {
    "blob": "1fb91c1ebf95847c328da72a3ea5c1f4a810714c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7abf011aa1b3ee1d3516cc2f83af9d5a8585984b190ef5aff239a4500cb33f18",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67af7522-c9fb-6e2e-e563-53a81a7f4f68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ruzsa_covering_mul (hA : A.Finite) (hB : B.Finite) (hB₀ : B.Nonempty)
    (hK : Nat.card (A * B) ≤ K * Nat.card B) :
    ∃ F ⊆ A, Nat.card F ≤ K ∧ A ⊆ F * (B / B) ∧ F.Finite := by
  lift A to Finset G using hA
  lift B to Finset G using hB
  classical
  obtain ⟨F, hFA, hF, hAF⟩ := Finset.ruzsa_covering_mul hB₀ (by simpa [← Finset.coe_mul] using hK)
  exact ⟨F, by norm_cast; simp [*]⟩

-- `alias` doesn't add the deprecation suggestion to the `to_additive` version
-- see https://github.com/leanprover-community/mathlib4/issues/19424
@[to_additive]
alias exists_subset_mul_div := ruzsa_covering_mul
attribute [deprecated ruzsa_covering_mul (since := "2024-11-26")] exists_subset_mul_div
attribute [deprecated ruzsa_covering_add (since := "2024-11-26")] exists_subset_add_sub

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb91c1ebf95847c328da72a3ea5c1f4a810714c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
