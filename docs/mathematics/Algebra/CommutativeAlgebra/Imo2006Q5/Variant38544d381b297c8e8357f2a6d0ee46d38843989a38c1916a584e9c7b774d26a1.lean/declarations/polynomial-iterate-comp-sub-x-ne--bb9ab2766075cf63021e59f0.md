# Polynomial.iterate_comp_sub_X_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4df2fcd6-6bb4-731a-5120-e508aa72876e",
  "kind": "theorem",
  "lexical_name": "Polynomial.iterate_comp_sub_X_ne",
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
  "slug": "polynomial-iterate-comp-sub-x-ne--bb9ab2766075cf63021e59f0",
  "source": {
    "blob": "2594616772decb41301a816d22732a9be3ec70f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 132,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb9ab2766075cf63021e59f04bb96ad2f50eb9bf1f9b23c66f4f824d501870de",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4df2fcd6-6bb4-731a-5120-e508aa72876e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.iterate_comp_sub_X_ne {P : Polynomial ℤ} (hP : 1 < P.natDegree) {k : ℕ}
    (hk : 0 < k) : P.comp^[k] X - X ≠ 0 := by
  rw [sub_ne_zero]
  apply_fun natDegree
  simpa using (one_lt_pow₀ hP hk.ne').ne'

/-- We solve the problem for the specific case k = 2 first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2594616772decb41301a816d22732a9be3ec70f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
