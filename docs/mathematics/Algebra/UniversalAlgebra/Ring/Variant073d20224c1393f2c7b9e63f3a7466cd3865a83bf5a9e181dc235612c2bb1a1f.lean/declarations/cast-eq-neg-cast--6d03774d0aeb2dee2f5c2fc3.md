# cast_eq_neg_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da7e8ac7-969b-e5b9-40fd-411a61762d1a",
  "kind": "lemma",
  "lexical_name": "cast_eq_neg_cast",
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
  "slug": "cast-eq-neg-cast--6d03774d0aeb2dee2f5c2fc3",
  "source": {
    "blob": "09e31c397618e0a301215f08f4c6a49ace88a477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 97,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d03774d0aeb2dee2f5c2fc3ae4eff7d17f681467aceb25f1772c57d2a66370f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7e8ac7-969b-e5b9-40fd-411a61762d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma cast_eq_neg_cast : (m : R) = -n ↔ m = 0 ∧ n = 0 := by
  simp [eq_neg_iff_add_eq_zero, ← cast_add]

end LinearOrderedRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e31c397618e0a301215f08f4c6a49ace88a477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
