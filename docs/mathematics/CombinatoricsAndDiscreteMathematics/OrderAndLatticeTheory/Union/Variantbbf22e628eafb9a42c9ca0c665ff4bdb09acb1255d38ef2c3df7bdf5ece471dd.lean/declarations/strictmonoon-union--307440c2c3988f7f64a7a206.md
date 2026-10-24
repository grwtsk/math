# StrictMonoOn.union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d4ff6e39217ee02c2ca4f238622665656f3c1db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35046bf8-8fb1-fc5e-43d0-3e596c4b9647",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aed66e0d-2957-6914-f028-346edce8a355",
  "kind": "theorem",
  "lexical_name": "StrictMonoOn.union",
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
  "slug": "strictmonoon-union--307440c2c3988f7f64a7a206",
  "source": {
    "blob": "2d4ff6e39217ee02c2ca4f238622665656f3c1db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:307440c2c3988f7f64a7a206fb071176afee1dc5b21040773494773de8b4d613",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aed66e0d-2957-6914-f028-346edce8a355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem StrictMonoOn.union {s t : Set α} {c : α} (h₁ : StrictMonoOn f s)
    (h₂ : StrictMonoOn f t) (hs : IsGreatest s c) (ht : IsLeast t c) : StrictMonoOn f (s ∪ t) := by
  have A : ∀ x, x ∈ s ∪ t → x ≤ c → x ∈ s := by
    intro x hx hxc
    cases hx
    · assumption
    rcases eq_or_lt_of_le hxc with (rfl | h'x)
    · exact hs.1
    exact (lt_irrefl _ (h'x.trans_le (ht.2 (by assumption)))).elim
  have B : ∀ x, x ∈ s ∪ t → c ≤ x → x ∈ t := by
    intro x hx hxc
    match hx with
    | Or.inr hx => exact hx
    | Or.inl hx =>
      rcases eq_or_lt_of_le hxc with (rfl | h'x)
      · exact ht.1
      exact (lt_irrefl _ (h'x.trans_le (hs.2 hx))).elim
  intro x hx y hy hxy
  rcases lt_or_le x c with (hxc | hcx)
  · have xs : x ∈ s := A _ hx hxc.le
    rcases lt_or_le y c with (hyc | hcy)
    · exact h₁ xs (A _ hy hyc.le) hxy
    · exact (h₁ xs hs.1 hxc).trans_le (h₂.monotoneOn ht.1 (B _ hy hcy) hcy)
  · have xt : x ∈ t := B _ hx hcx
    have yt : y ∈ t := B _ hy (hcx.trans hxy.le)
    exact h₂ xt yt hxy

/-- If `f` is strictly monotone both on `(-∞, a]` and `[a, ∞)`, then it is strictly monotone on the
whole line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4ff6e39217ee02c2ca4f238622665656f3c1db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
