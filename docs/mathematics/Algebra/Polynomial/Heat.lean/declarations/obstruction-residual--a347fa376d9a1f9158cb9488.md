# obstruction_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f8f37e4-d017-225c-4084-b231b4c9ed50",
  "kind": "theorem",
  "lexical_name": "obstruction_residual",
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
  "slug": "obstruction-residual--a347fa376d9a1f9158cb9488",
  "source": {
    "blob": "5c7c40d6b2e32ff8b2a39e0876bf316567b4e73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 135,
    "path": "GRWTSK/Algebra/Polynomial/Heat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a347fa376d9a1f9158cb9488f94fbb39c87b23c2fd023f0f3eade42fb56c72eb",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/Heat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f8f37e4-d017-225c-4084-b231b4c9ed50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem obstruction_residual (a b : Rat) :
    cscale 2 (cadd (cscale (3/4) (a,b)) (0,3/4)) =
    cscale (3/2) (cadd (a,b) (0,1)) := by
  simp only [cscale,cadd,Prod.mk.injEq]
  grind

end TaoHodgeFinite
#print axioms TaoHodgeFinite.polynomial_heat_sign
#print axioms TaoHodgeFinite.heat_semigroup
#print axioms TaoHodgeFinite.even_shift_expansion
#print axioms TaoHodgeFinite.transverse_polynomial_bridge
#print axioms TaoHodgeFinite.normalization
#print axioms TaoHodgeFinite.time_and_collar
#print axioms TaoHodgeFinite.midpoint_and_variance
#print axioms TaoHodgeFinite.shrinking_collar_center
#print axioms TaoHodgeFinite.weighted_center
#print axioms TaoHodgeFinite.signed_residual
#print axioms TaoHodgeFinite.weighted_example
#print axioms TaoHodgeFinite.sharper_budget
#print axioms TaoHodgeFinite.obstruction_residual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/Heat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/Heat.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7c40d6b2e32ff8b2a39e0876bf316567b4e73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
