# sum_le_exp_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91fdfaf3-dfb1-351c-5c42-aeb8eadb5427",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e15d5e87-9c63-d641-1e44-573a840dd372",
  "kind": "theorem",
  "lexical_name": "sum_le_exp_of_nonneg",
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
  "slug": "sum-le-exp-of-nonneg--d2b3e4877401d98fb0b91127",
  "source": {
    "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1468,
    "line": 1457,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b3e4877401d98fb0b91127c675f9bf6200af16f34eab9fa90d7526658ef8b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e15d5e87-9c63-d641-1e44-573a840dd372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1457–1468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_le_exp_of_nonneg {x : ℝ} (hx : 0 ≤ x) (n : ℕ) : ∑ i in range n, x ^ i / i ! ≤ exp x :=
  calc
    ∑ i in range n, x ^ i / i ! ≤ lim (⟨_, isCauSeq_re (exp' x)⟩ : CauSeq ℝ Abs.abs) := by
      refine' le_lim (CauSeq.le_of_exists ⟨n, fun j hj => _⟩)
      simp only [exp', const_apply, re_sum]
      norm_cast
      rw [← Nat.add_sub_of_le hj, Finset.sum_range_add]
      refine' le_add_of_nonneg_right (sum_nonneg fun i _ => _)
      positivity
    _ = exp x := by rw [exp, Complex.exp, ← cauSeqRe, lim_re]
#align real.sum_le_exp_of_nonneg Real.sum_le_exp_of_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean#L1457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d71e496ea143cafd81c9aa2893b68b5ab902d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
