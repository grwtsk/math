# weighted_variance_le_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de546dc2-f02e-e163-514f-43916c1c0506",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14c8cdab-e711-dd1b-7afd-04122ee62fb9",
  "kind": "lemma",
  "lexical_name": "weighted_variance_le_tail_bound",
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
  "slug": "weighted-variance-le-tail-bound--a082544e884263e573aaba39",
  "source": {
    "blob": "84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a082544e884263e573aaba39601a67732ee5c32d5aa26e58b2fb65e1fb4ce7e5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14c8cdab-e711-dd1b-7afd-04122ee62fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weighted_variance_le_tail_bound {p g b : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2))
    (hp1 : ∑' n, p n = 1) (hb : Summable b) (K : ℝ)
    (hbound : ∀ n, p (n+1)*(g (n+1)-g 0)^2 ≤ K*b n) :
    (∑' n, p n*(g n-(∑' i, p i*g i))^2) ≤ K*(∑' n, b n) := by
  have hs := weighted_sub_sq_summable hp hg hg2 (g 0)
  have hshift : Summable (fun n => p (n+1)*(g (n+1)-g 0)^2) :=
    (summable_nat_add_iff 1).mpr hs
  calc
    _ ≤ ∑' n, p n*(g n-g 0)^2 := weighted_variance_le_center hp hg hg2 hp1 _
    _ = ∑' n, p (n+1)*(g (n+1)-g 0)^2 := by
      rw [hs.tsum_eq_zero_add]
      simp
    _ ≤ ∑' n, K*b n := hshift.tsum_le_tsum hbound (hb.mul_left K)
    _ = _ := tsum_mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
