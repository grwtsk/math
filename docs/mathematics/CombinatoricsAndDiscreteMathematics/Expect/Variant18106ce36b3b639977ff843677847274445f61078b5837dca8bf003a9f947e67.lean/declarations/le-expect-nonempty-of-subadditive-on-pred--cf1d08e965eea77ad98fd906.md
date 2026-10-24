# le_expect_nonempty_of_subadditive_on_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:199f40f9-f9c1-fbf3-2dd0-673b052ef8db",
  "kind": "lemma",
  "lexical_name": "le_expect_nonempty_of_subadditive_on_pred",
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
  "slug": "le-expect-nonempty-of-subadditive-on-pred--cf1d08e965eea77ad98fd906",
  "source": {
    "blob": "c0613fcfa4953f33b4781b58f38304e87796ab56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf1d08e965eea77ad98fd906cb3c8e73bdfd4f9c7416b78758aaae413602e728",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:199f40f9-f9c1-fbf3-2dd0-673b052ef8db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_expect_nonempty_of_subadditive_on_pred (h_add : ∀ a b, p a → p b → m (a + b) ≤ m a + m b)
    (hp_add : ∀ a b, p a → p b → p (a + b)) (h_div : ∀ (n : ℕ) a, p a → m (a /ℚ n) = m a /ℚ n)
    (hs_nonempty : s.Nonempty) (hs : ∀ i ∈ s, p (f i)) :
    m (𝔼 i ∈ s, f i) ≤ 𝔼 i ∈ s, m (f i) := by
  simp only [expect, h_div _ _ (sum_induction_nonempty _ _ hp_add hs_nonempty hs)]
  exact smul_le_smul_of_nonneg_left
    (le_sum_nonempty_of_subadditive_on_pred _ _ h_add hp_add _ _ hs_nonempty hs) <| by positivity

/-- If `m : M → N` is a subadditive function (`m (a + b) ≤ m a + m b`) and `s` is a nonempty set,
then `m (𝔼 i ∈ s, f i) ≤ 𝔼 i ∈ s, m (f i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0613fcfa4953f33b4781b58f38304e87796ab56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
