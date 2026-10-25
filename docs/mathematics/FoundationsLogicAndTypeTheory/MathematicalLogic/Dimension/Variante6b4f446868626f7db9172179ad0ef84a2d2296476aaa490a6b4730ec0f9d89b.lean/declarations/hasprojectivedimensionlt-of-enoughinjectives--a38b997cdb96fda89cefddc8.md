# hasProjectiveDimensionLT_of_enoughInjectives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a966a00b58c27e2b919d2888467767d4898d4ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:657c5d70-9cbd-9c79-cc71-6b0cecad5d99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91beac30-4627-d877-a859-ed6f2b68281f",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLT_of_enoughInjectives",
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
  "slug": "hasprojectivedimensionlt-of-enoughinjectives--a38b997cdb96fda89cefddc8",
  "source": {
    "blob": "7a966a00b58c27e2b919d2888467767d4898d4ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a38b997cdb96fda89cefddc8301d4ef311a58beb4e37ab5e1aeed7225180e4be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91beac30-4627-d877-a859-ed6f2b68281f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLT_of_enoughInjectives [HasExt.{w} C] [EnoughInjectives C] (X : C)
    (n : ℕ) (hX : ∀ Y : C, Subsingleton (Ext X Y n)) : HasProjectiveDimensionLT X n := by
  suffices ∀ ⦃d : ℕ⦄ ⦃Y : C⦄ (e : Ext X Y d) (k : ℕ), d = n + k → e = 0 from
    HasProjectiveDimensionLT.mk (fun i hi Y e ↦ by
      obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hi
      exact this e k rfl)
  intro d Y e k hd
  induction k generalizing d Y with
  | zero =>
    obtain rfl : d = n := by simpa using hd
    subsingleton
  | succ k hk =>
    let ⟨p⟩ := EnoughInjectives.presentation Y
    have h : (ShortComplex.mk _ _ (cokernel.condition p.f)).ShortExact :=
      { exact := ShortComplex.exact_cokernel p.f }
    have hd : n + k + 1 = d := by lia
    obtain ⟨x, rfl⟩ := Ext.covariant_sequence_exact₁ X h e
      (by subst hd; apply Ext.eq_zero_of_injective) hd
    simp [hk x rfl]

end CategoryTheory

section ProjectiveDimension

namespace CategoryTheory

variable {C : Type u} [Category.{v, u} C] [Abelian C]

/-- The projective dimension of an object in an abelian category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a966a00b58c27e2b919d2888467767d4898d4ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
