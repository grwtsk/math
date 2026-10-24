# expect_nbij

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a0af6e-7bf8-54b5-6164-270f363abac1",
  "kind": "lemma",
  "lexical_name": "expect_nbij",
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
  "slug": "expect-nbij--07ce224e3b62ea833a055b3a",
  "source": {
    "blob": "43b483189b452c445b957498d978c55b3cccf308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 232,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07ce224e3b62ea833a055b3a6293032804123a87abab7af339fff0b97581ef78",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a0af6e-7bf8-54b5-6164-270f363abac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma expect_nbij (i : ι → κ) (hi : ∀ a ∈ s, i a ∈ t) (h : ∀ a ∈ s, f a = g (i a))
    (i_inj : (s : Set ι).InjOn i) (i_surj : (s : Set ι).SurjOn i t) :
    𝔼 i ∈ s, f i = 𝔼 i ∈ t, g i := by
  simp_rw [expect, card_nbij i hi i_inj i_surj, sum_nbij i hi i_inj i_surj h]

/-- Reorder an average.

The difference with `Finset.expect_nbij` is that the bijection is specified with an inverse, rather
than as a surjective injection.

The difference with `Finset.expect_bij'` is that the bijection and its inverse are non-dependent
functions, rather than being allowed to use membership of the domains of the averages.

The difference with `Finset.expect_equiv` is that bijectivity is only required to hold on the
domains of the averages, rather than on the entire types. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b483189b452c445b957498d978c55b3cccf308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
