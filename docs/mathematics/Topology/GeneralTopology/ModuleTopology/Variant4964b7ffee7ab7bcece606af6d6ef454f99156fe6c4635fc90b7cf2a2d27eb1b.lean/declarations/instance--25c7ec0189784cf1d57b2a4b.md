# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:830b0f363eebda580c47d619aa8b9739f5146adb4f119d85b8caff2336a36949",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--25c7ec0189784cf1d57b2a4b",
  "source": {
    "blob": "b52807b13a5e31d0b16b74c1fea3fa29137fdcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25c7ec0189784cf1d57b2a4b876179436be38f151b37e3bbe863b5ca4db4f7d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:830b0f363eebda580c47d619aa8b9739f5146adb4f119d85b8caff2336a36949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 1100) _root_.IsTopologicalSemiring.toIsModuleTopology :
    IsModuleTopology R R := by
  /- By a previous lemma it suffices to show that the identity from (R,usual) to
  (R, module topology) is continuous. -/
  apply of_continuous_id
  /-
  The idea needed here is to rewrite the identity function as the composite of `r ↦ (r,1)`
  from `R` to `R × R`, and multiplication `R × R → R`.
  -/
  rw [show (id : R → R) = (fun rs ↦ rs.1 • rs.2) ∘ (fun r ↦ (r, 1)) by ext; simp]
  /-
  It thus suffices to show that each of these maps are continuous. For this claim to even make
  sense, we need to topologise `R × R`. The trick is to do this by giving the first `R` the usual
  topology `τR` and the second `R` the module topology. To do this we have to "fight mathlib"
  a bit with `@`, because there is more than one topology on `R` here.
  -/
  apply @Continuous.comp R (R × R) R τR (@instTopologicalSpaceProd R R τR (moduleTopology R R))
      (moduleTopology R R)
  · /-
    The map R × R → R is `•`, so by a fundamental property of the module topology,
    this is continuous. -/
    exact @continuous_smul _ _ _ _ (moduleTopology R R) <| ModuleTopology.continuousSMul ..
  · /-
    The map `R → R × R` sending `r` to `(r,1)` is a map into a product, so it suffices to show
    that each of the two factors is continuous. But the first is the identity function
    on `(R, usual topology)` and the second is a constant function. -/
    exact @Continuous.prodMk _ _ _ _ (moduleTopology R R) _ _ _ continuous_id <|
      @continuous_const _ _ _ (moduleTopology R R) _

end self

section MulOpposite

variable (R : Type*) [Semiring R] [τR : TopologicalSpace R] [IsTopologicalSemiring R]

/-- The module topology coming from the action of the topological ring `Rᵐᵒᵖ` on `R`
  (via `Semiring.toOppositeModule`, i.e. via `(op r) • m = m * r`) is `R`'s topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52807b13a5e31d0b16b74c1fea3fa29137fdcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
