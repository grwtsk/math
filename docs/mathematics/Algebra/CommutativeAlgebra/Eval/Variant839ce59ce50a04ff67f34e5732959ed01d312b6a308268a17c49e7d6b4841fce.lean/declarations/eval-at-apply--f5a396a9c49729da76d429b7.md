# eval₂_at_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4e34c0c-11db-d3a9-1681-5d869ac45628",
  "kind": "theorem",
  "lexical_name": "eval₂_at_apply",
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
  "slug": "eval-at-apply--f5a396a9c49729da76d429b7",
  "source": {
    "blob": "c803964f6b2b62797c4854e566346e08ac1196b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 337,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5a396a9c49729da76d429b7526ed1debc25565888b4bce3259edafaf33003a5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4e34c0c-11db-d3a9-1681-5d869ac45628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_at_apply {S : Type*} [Semiring S] (f : R →+* S) (r : R) :
    p.eval₂ f (f r) = f (p.eval r) := by
  rw [eval₂_eq_sum, eval_eq_sum, sum, sum, f.map_sum]
  simp only [f.map_mul, f.map_pow]
#align polynomial.eval₂_at_apply Polynomial.eval₂_at_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c803964f6b2b62797c4854e566346e08ac1196b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
