# tendsto_zero_of_meromorphicOrderAt_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74befd79-09d2-211e-a897-1705df9bbe66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4de9e44e-c6b9-5a81-2def-1cba971d666c",
  "kind": "lemma",
  "lexical_name": "tendsto_zero_of_meromorphicOrderAt_pos",
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
  "slug": "tendsto-zero-of-meromorphicorderat-pos--36aa38c58a5492cd3a07ef0c",
  "source": {
    "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 205,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36aa38c58a5492cd3a07ef0c33155b16bce0b5f22188f466f8c57fdfb6c86865",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4de9e44e-c6b9-5a81-2def-1cba971d666c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_zero_of_meromorphicOrderAt_pos (ho : 0 < meromorphicOrderAt f x) :
    Tendsto f (𝓝[≠] x) (𝓝 0) := by
  have hf : MeromorphicAt f x := meromorphicAt_of_meromorphicOrderAt_ne_zero ho.ne'
  cases h'o : meromorphicOrderAt f x with
  | top =>
    apply tendsto_const_nhds.congr'
    filter_upwards [meromorphicOrderAt_eq_top_iff.1 h'o] with y hy using hy.symm
  | coe n =>
    rcases (meromorphicOrderAt_eq_int_iff hf).1 h'o with ⟨g, g_an, gx, hg⟩
    lift n to ℕ using by simpa [h'o] using ho.le
    have : (0 : E) = (x - x) ^ n • g x := by
      have : 0 < n := by simpa [h'o] using ho
      simp [zero_pow_eq_zero.2 this.ne']
    rw [this]
    have : ContinuousAt (fun z ↦ (z - x) ^ n • g z) x := by fun_prop
    apply this.continuousWithinAt.tendsto.congr'
    filter_upwards [hg] with y hy using by simp [hy]

/-- If the order of a meromorphic function is nonnegative, then this function converges
at this point. See also the iff version `tendsto_nhds_iff_meromorphicOrderAt_nonneg`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2a45051c74b71cf27654c2aa16bfb975ce76b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
