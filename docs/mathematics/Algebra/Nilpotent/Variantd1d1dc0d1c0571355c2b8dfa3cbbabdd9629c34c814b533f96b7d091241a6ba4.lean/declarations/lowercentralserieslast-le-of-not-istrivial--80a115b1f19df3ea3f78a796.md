# lowerCentralSeriesLast_le_of_not_isTrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42d55107-fb7c-5830-f52c-65e1d1230ef8",
  "kind": "theorem",
  "lexical_name": "lowerCentralSeriesLast_le_of_not_isTrivial",
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
  "slug": "lowercentralserieslast-le-of-not-istrivial--80a115b1f19df3ea3f78a796",
  "source": {
    "blob": "2fc68f517c627a1147a0ffbf63bfc3e3481da8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 476,
    "path": "GRWTSK/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80a115b1f19df3ea3f78a7960af3662ed74e44987dded175c072883d4943608e",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42d55107-fb7c-5830-f52c-65e1d1230ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerCentralSeriesLast_le_of_not_isTrivial [IsNilpotent L M] (h : ¬ IsTrivial L M) :
    lowerCentralSeriesLast R L M ≤ lowerCentralSeries R L M 1 := by
  rw [lowerCentralSeriesLast]
  replace h : 1 < nilpotencyLength L M := by
    by_contra contra
    have := isTrivial_of_nilpotencyLength_le_one L M (not_lt.mp contra)
    contradiction
  rcases hk : nilpotencyLength L M with - | k <;> rw [hk] at h
  · contradiction
  · exact antitone_lowerCentralSeries _ _ _ (Nat.lt_succ.mp h)

variable [LieModule R L M]

/-- For a nilpotent Lie module `M` of a Lie algebra `L`, the first term in the lower central series
of `M` contains a non-zero element on which `L` acts trivially unless the entire action is trivial.

Taking `M = L`, this provides a useful characterisation of Abelian-ness for nilpotent Lie
algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc68f517c627a1147a0ffbf63bfc3e3481da8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
