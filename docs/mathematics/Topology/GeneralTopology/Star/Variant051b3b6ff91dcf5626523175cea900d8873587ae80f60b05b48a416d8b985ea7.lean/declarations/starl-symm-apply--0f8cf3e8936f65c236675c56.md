# starL_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f55c11f0-53bd-13a0-96bd-95f92c94da30",
  "kind": "theorem",
  "lexical_name": "starL_symm_apply",
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
  "slug": "starl-symm-apply--0f8cf3e8936f65c236675c56",
  "source": {
    "blob": "f00629c9cd1c121644dafe22c8d088fe1e68c14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f8cf3e8936f65c236675c56d980dda6ba1955dc0f80ed1937d8058cfa3dd72c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f55c11f0-53bd-13a0-96bd-95f92c94da30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem starL_symm_apply (x : A) : (starL R).symm x = starAddEquiv.symm x := by
  simp

variable [TrivialStar R]

-- TODO: this could be replaced with something like `(starL R).restrict_scalarsₛₗ h` if we
-- implemented the idea in
-- https://leanprover.zulipchat.com/#narrow/stream/217875-Is-there-code-for-X.3F/topic/Star-semilinear.20maps.20are.20semilinear.20when.20star.20is.20trivial/near/359557835
#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- If `A` is a topological module over a commutative `R` with trivial star and compatible actions,
then `star` is a continuous linear equivalence. -/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f00629c9cd1c121644dafe22c8d088fe1e68c14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
