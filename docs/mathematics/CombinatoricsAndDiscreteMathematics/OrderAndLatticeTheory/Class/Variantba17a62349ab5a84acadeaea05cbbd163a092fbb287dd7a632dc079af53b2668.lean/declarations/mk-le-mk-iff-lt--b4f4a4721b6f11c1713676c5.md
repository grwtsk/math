# mk_le_mk_iff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7107797f-27e8-5491-7a0c-413e1ae6f3e4",
  "kind": "theorem",
  "lexical_name": "mk_le_mk_iff_lt",
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
  "slug": "mk-le-mk-iff-lt--b4f4a4721b6f11c1713676c5",
  "source": {
    "blob": "56ba738d9fda5fa9ee816085163a334c6d92f013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 287,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Variantba17a62349ab5a84acadeaea05cbbd163a092fbb287dd7a632dc079af53b2668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4f4a4721b6f11c1713676c5dea56795ce08ef6c8351b0a37ad83196b1a758df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Variantba17a62349ab5a84acadeaea05cbbd163a092fbb287dd7a632dc079af53b2668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7107797f-27e8-5491-7a0c-413e1ae6f3e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_le_mk_iff_lt (ha : a ≠ 1) : mk a ≤ mk b ↔ ∃ n, |b|ₘ < |a|ₘ ^ n := by
  refine ⟨fun ⟨n, hn⟩ ↦ ⟨n + 1, hn.trans_lt ?_⟩, fun ⟨n, hn⟩ ↦ ?_⟩
  · rw [pow_succ]
    exact lt_mul_of_one_lt_right' _ (one_lt_mabs.mpr ha)
  · exact ⟨n, hn.le⟩

/-- 1 is in its own class (see `MulArchimedeanClass.mk_eq_top_iff`),
which is also the largest class. -/
@[to_additive /-- 0 is in its own class (see `ArchimedeanClass.mk_eq_top_iff`),
which is also the largest class. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Variantba17a62349ab5a84acadeaea05cbbd163a092fbb287dd7a632dc079af53b2668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Variantba17a62349ab5a84acadeaea05cbbd163a092fbb287dd7a632dc079af53b2668.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56ba738d9fda5fa9ee816085163a334c6d92f013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
