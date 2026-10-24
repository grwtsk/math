# card_cubicalQuantizedSkeleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db742b6c8a559c6be677decabda66708087ab293",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9019a737-82b5-7c00-224b-1b12f701590d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aacf5b77-7240-9ab7-90d2-50289b3e9f7d",
  "kind": "theorem",
  "lexical_name": "card_cubicalQuantizedSkeleton",
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
  "slug": "card-cubicalquantizedskeleton--c355405a483f7586a6385414",
  "source": {
    "blob": "db742b6c8a559c6be677decabda66708087ab293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 307,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c355405a483f7586a6385414fa11198dfa362f1ce14622edf60f4a91ace5ffaa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aacf5b77-7240-9ab7-90d2-50289b3e9f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_cubicalQuantizedSkeleton
    (decomposition : FiniteCubicalDecomposition.{u})
    (degree bits rows columns : Nat) :
    Fintype.card
        (CubicalQuantizedSkeleton decomposition bits rows columns degree) =
      2 ^
        (bits * rows * columns *
          FiniteCubicalDecomposition.cellCountThrough decomposition degree) := by
  induction degree with
  | zero =>
      rw [show FiniteCubicalDecomposition.cellCountThrough decomposition 0 =
          FiniteCubicalDecomposition.cellCount decomposition 0 by
        simp [FiniteCubicalDecomposition.cellCountThrough]]
      exact CubicalQuantizedField.card_cubicalQuantizedField
        decomposition 0 bits rows columns
  | succ degree ih =>
      change Fintype.card
          (CubicalQuantizedSkeleton decomposition bits rows columns degree ×
            CubicalQuantizedField decomposition (degree + 1) bits rows columns) = _
      rw [Fintype.card_prod, ih,
        CubicalQuantizedField.card_cubicalQuantizedField]
      rw [← pow_add]
      rw [← Nat.mul_add]
      rw [← FiniteCubicalDecomposition.cellCountThrough_succ]

end CubicalQuantizedSkeleton

/-- Public uniform degree-field cardinality theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db742b6c8a559c6be677decabda66708087ab293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
