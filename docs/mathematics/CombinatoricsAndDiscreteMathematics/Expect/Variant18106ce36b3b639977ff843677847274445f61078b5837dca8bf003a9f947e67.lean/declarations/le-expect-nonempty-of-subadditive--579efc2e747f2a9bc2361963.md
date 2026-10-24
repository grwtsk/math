# le_expect_nonempty_of_subadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f33ce01-6d6f-c34b-d63e-a0b406eee9f0",
  "kind": "lemma",
  "lexical_name": "le_expect_nonempty_of_subadditive",
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
  "slug": "le-expect-nonempty-of-subadditive--579efc2e747f2a9bc2361963",
  "source": {
    "blob": "c0613fcfa4953f33b4781b58f38304e87796ab56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:579efc2e747f2a9bc2361963c66afb04d92271cbee11aac0e433cabc48d73593",
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

Occurrence: `result:6f33ce01-6d6f-c34b-d63e-a0b406eee9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_expect_nonempty_of_subadditive (m : M → N) (h_mul : ∀ a b, m (a + b) ≤ m a + m b)
    (h_div : ∀ (n : ℕ) a, m (a /ℚ n) = m a /ℚ n) (hs : s.Nonempty) :
    m (𝔼 i ∈ s, f i) ≤ 𝔼 i ∈ s, m (f i) :=
  le_expect_nonempty_of_subadditive_on_pred (p := fun _ ↦ True) (by simpa) (by simp) (by simpa) hs
    (by simp)

/-- Let `{a | p a}` be a subsemigroup of a commutative monoid `M`. If `m` is a subadditive function
(`m (x + y) ≤ m x + m y`, `m 0 = 0`) preserved under division by a natural and `f` is a function
valued in that subsemigroup, then `m (𝔼 i ∈ s, f i) ≤ 𝔼 i ∈ s, m (f i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0613fcfa4953f33b4781b58f38304e87796ab56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
