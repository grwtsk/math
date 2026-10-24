# isPrimary_of_isMaximal_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb9b4d62-a4a7-e395-0939-a16c796a2831",
  "kind": "theorem",
  "lexical_name": "isPrimary_of_isMaximal_radical",
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
  "slug": "isprimary-of-ismaximal-radical--e4ec3f41eb5d13933584722d",
  "source": {
    "blob": "0e80c7d6e9293fc08df83315630b1fd8827ff572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/Algebra/IsPrimary/Variant2f2085e8a4591d7c1694c01163545c97b264e99738eb907a99992b25ea2382bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ec3f41eb5d13933584722d1dc091bda1a09747c6cb0da713f0afb1d411f62e",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrimary/Variant2f2085e8a4591d7c1694c01163545c97b264e99738eb907a99992b25ea2382bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb9b4d62-a4a7-e395-0939-a16c796a2831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimary_of_isMaximal_radical {I : Ideal R} (hi : IsMaximal (radical I)) :
    I.IsPrimary := by
  rw [isPrimary_iff]
  constructor
  · rintro rfl
    exact (radical_top R ▸ hi).ne_top rfl
  · intro x y hxy
    by_cases h : I + span {y} = ⊤
    · rw [← span_singleton_le_iff_mem, ← mul_top (span {x}), ← h, mul_add,
        span_singleton_mul_span_singleton, add_le_iff, span_singleton_le_iff_mem]
      exact Or.inl ⟨mul_le_right, hxy⟩
    · obtain ⟨m, hm, hy⟩ := exists_le_maximal (I + span {y}) h
      rw [add_le_iff, span_singleton_le_iff_mem, ← hm.isPrime.radical_le_iff] at hy
      exact Or.inr (hi.eq_of_le hm.ne_top hy.1 ▸ hy.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrimary/Variant2f2085e8a4591d7c1694c01163545c97b264e99738eb907a99992b25ea2382bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrimary/Variant2f2085e8a4591d7c1694c01163545c97b264e99738eb907a99992b25ea2382bd.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e80c7d6e9293fc08df83315630b1fd8827ff572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
