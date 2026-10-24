# weightedOrder_add_of_weightedOrder_lt.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1deeecb9de62504fd2418d334e1c860f4251931",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06dc4ba3-6186-657f-40de-47931d56699c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55e92b32-e3d1-76df-0da6-6e26e0aabc42",
  "kind": "theorem",
  "lexical_name": "weightedOrder_add_of_weightedOrder_lt.aux",
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
  "slug": "weightedorder-add-of-weightedorder-lt-aux--772c377b1ad5546e337a29ae",
  "source": {
    "blob": "f1deeecb9de62504fd2418d334e1c860f4251931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:772c377b1ad5546e337a29aee896cc2c19d2bb02fa917ab13df1df282c4c376e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55e92b32-e3d1-76df-0da6-6e26e0aabc42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weightedOrder_add_of_weightedOrder_lt.aux
    (H : f.weightedOrder w < g.weightedOrder w) :
    (f + g).weightedOrder w = f.weightedOrder w := by
  obtain ⟨n, hn : (n : ℕ∞) = _⟩ := ENat.ne_top_iff_exists.mp (ne_top_of_lt H)
  rw [← hn, weightedOrder_eq_nat]
  obtain ⟨d, hd', hd⟩ := ((weightedOrder_eq_nat w).mp hn.symm).1
  constructor
  · refine ⟨d, ?_, hd⟩
    rw [← hn, ← hd] at H
    rw [(coeff _ _).map_add, coeff_eq_zero_of_lt_weightedOrder w H, add_zero]
    exact hd'
  · intro b hb
    suffices weight w b < weightedOrder w f by
      rw [(coeff _ _).map_add, coeff_eq_zero_of_lt_weightedOrder w this,
        coeff_eq_zero_of_lt_weightedOrder w (lt_trans this H), add_zero]
    rw [← hn, Nat.cast_lt]
    exact hb

/-- The weighted_order of the sum of two formal power series
is the minimum of their orders if their orders differ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1deeecb9de62504fd2418d334e1c860f4251931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
