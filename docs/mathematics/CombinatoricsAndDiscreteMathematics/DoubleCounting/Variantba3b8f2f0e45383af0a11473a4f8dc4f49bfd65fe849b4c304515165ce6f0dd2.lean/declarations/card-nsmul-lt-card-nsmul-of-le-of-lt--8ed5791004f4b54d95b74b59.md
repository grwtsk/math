# card_nsmul_lt_card_nsmul_of_le_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efe367c1-0055-4c39-10f7-5c1e7645c972",
  "kind": "theorem",
  "lexical_name": "card_nsmul_lt_card_nsmul_of_le_of_lt",
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
  "slug": "card-nsmul-lt-card-nsmul-of-le-of-lt--8ed5791004f4b54d95b74b59",
  "source": {
    "blob": "97809a650d3040f2fda7382a919df7ecae1b1bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ed5791004f4b54d95b74b59b8f9492948e8f94beff4db4c49da86f17d1a2caa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efe367c1-0055-4c39-10f7-5c1e7645c972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_nsmul_lt_card_nsmul_of_le_of_lt [∀ a b, Decidable (r a b)] (ht : t.Nonempty)
    (hm : ∀ a ∈ s, m ≤ #(t.bipartiteAbove r a))
    (hn : ∀ b ∈ t, #(s.bipartiteBelow r b) < n) : #s • m < #t • n :=
  calc
    _ ≤ ∑ a ∈ s, (#(t.bipartiteAbove r a) : R) := s.card_nsmul_le_sum _ _ hm
    _ = ∑ b ∈ t, (#(s.bipartiteBelow r b) : R) := by
      norm_cast; rw [sum_card_bipartiteAbove_eq_sum_card_bipartiteBelow]
    _ < ∑ _b ∈ t, n := sum_lt_sum_of_nonempty ht hn
    _ = _ := sum_const _

/-- **Double counting** argument.

Considering `r` as a bipartite graph, the LHS is a strict lower bound on the number of edges while
the RHS is an upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97809a650d3040f2fda7382a919df7ecae1b1bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
