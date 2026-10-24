# cauchy_davenport_mul_of_isTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3037c1624ac91e22895e3374a30ed196f14dae4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afdd0c25-6c9c-7741-9f21-edd7dff9c49f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c999352a-40e6-7dd5-432b-cf006c8a7279",
  "kind": "lemma",
  "lexical_name": "cauchy_davenport_mul_of_isTorsionFree",
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
  "slug": "cauchy-davenport-mul-of-istorsionfree--60a6383a3a7326a4f52331f6",
  "source": {
    "blob": "a3037c1624ac91e22895e3374a30ed196f14dae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a6383a3a7326a4f52331f67c832eda2b749f397d479ce11e05d738652858af",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c999352a-40e6-7dd5-432b-cf006c8a7279`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cauchy_davenport_mul_of_isTorsionFree (h : IsTorsionFree α)
    (hs : s.Nonempty) (ht : t.Nonempty) : #s + #t - 1 ≤ #(s * t) := by
  simpa only [h.minOrder, min_eq_right, le_top, Nat.cast_le]
    using cauchy_davenport_minOrder_mul hs ht

end General

/-! ### $$ℤ/nℤ$$ -/

/-- The **Cauchy-Davenport Theorem**. If `s`, `t` are nonempty sets in $$ℤ/pℤ$$, then the size of
`s + t` is lower-bounded by `|s| + |t| - 1`, unless this quantity is greater than `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3037c1624ac91e22895e3374a30ed196f14dae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
