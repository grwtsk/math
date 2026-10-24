# eigenvalues_eigEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72fe1fa6-1cf7-a706-44f4-487f92d56da1",
  "kind": "lemma",
  "lexical_name": "eigenvalues_eigEquiv",
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
  "slug": "eigenvalues-eigequiv--6a4df56f4e22663487908083",
  "source": {
    "blob": "f8ed5d166d554060fe162bf383e02ed8bce48ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a4df56f4e226634879080834952a4b7ad2469d4c5ffbea31ca223eafc9ac53d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72fe1fa6-1cf7-a706-44f4-487f92d56da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eigenvalues_eigEquiv (k : Fin (Fintype.card n)) :
    hA.eigenvalues (eigEquiv (n := n) k) = hA.eigenvalues₀ k := by
  simp [Matrix.IsHermitian.eigenvalues, eigEquiv]

/-- Any sum over `n` of a function of the eigenvalues equals the corresponding
sum over `Fin (card n)` of the function applied to `eigenvalues₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ed5d166d554060fe162bf383e02ed8bce48ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
