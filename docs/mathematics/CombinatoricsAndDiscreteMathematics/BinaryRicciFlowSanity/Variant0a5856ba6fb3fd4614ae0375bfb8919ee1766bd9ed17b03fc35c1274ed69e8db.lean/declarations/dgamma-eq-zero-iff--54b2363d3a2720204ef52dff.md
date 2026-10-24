# dGamma_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae589eec-64b1-9647-76b5-4132134f033c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eba38ab1-0da3-b141-7648-4d75037ad4d6",
  "kind": "theorem",
  "lexical_name": "dGamma_eq_zero_iff",
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
  "slug": "dgamma-eq-zero-iff--54b2363d3a2720204ef52dff",
  "source": {
    "blob": "a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54b2363d3a2720204ef52dff2dce3cf8625dd7b9268e284883c8f9dbfae7cd4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eba38ab1-0da3-b141-7648-4d75037ad4d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dGamma_eq_zero_iff
    (Γ : GammaWeight)
    (x y : PaddedBitState) :
    dGamma Γ x y = 0 ↔ x = y := by
  constructor
  · intro h
    let N := max (supportBound x) (supportBound y)
    have hx : supportBound x ≤ N := le_max_left _ _
    have hy : supportBound y ≤ N := le_max_right _ _
    have hsum :
        (∑ i ∈ Finset.range N,
          Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)|) = 0 := by
      simpa [N] using
        (by
          rw [← dGamma_eq_sum_range_of_supports_le Γ x y hx hy]
          exact h)
    have hterm :
        ∀ i ∈ Finset.range N,
          Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)| = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (s := Finset.range N)
        (f := fun i =>
          Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)|)
        (fun i _ => mul_nonneg (le_of_lt (Γ.pos i)) (abs_nonneg _))).mp hsum
    apply Subtype.ext
    funext i
    by_cases hi : i < N
    · have hprod := hterm i (Finset.mem_range.mpr hi)
      have habs : |bitReal (x.1 i) - bitReal (y.1 i)| = 0 := by
        rcases mul_eq_zero.mp hprod with hw | habs
        · exact False.elim ((ne_of_gt (Γ.pos i)) hw)
        · exact habs
      have hreal : bitReal (x.1 i) = bitReal (y.1 i) :=
        sub_eq_zero.mp (abs_eq_zero.mp habs)
      exact bitReal_injective hreal
    · have hge : N ≤ i := Nat.le_of_not_gt hi
      have hxi : x.1 i = 0 :=
        supportBound_spec x i (hx.trans hge)
      have hyi : y.1 i = 0 :=
        supportBound_spec y i (hy.trans hge)
      simp [hxi, hyi]
  · intro h
    rw [h]
    exact dGamma_self Γ y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
