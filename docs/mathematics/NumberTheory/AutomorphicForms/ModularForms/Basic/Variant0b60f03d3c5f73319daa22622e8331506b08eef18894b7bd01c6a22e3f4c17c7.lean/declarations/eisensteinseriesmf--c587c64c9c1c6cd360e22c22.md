# eisensteinSeriesMF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b98228f72b35fdb6ac3e195b5cef88f33256dfdaffc48ffde7f641b11903339",
  "kind": "def",
  "lexical_name": "eisensteinSeriesMF",
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
  "slug": "eisensteinseriesmf--c587c64c9c1c6cd360e22c22",
  "source": {
    "blob": "94155547e336c1db1f3f3ad67b6a11369affa7c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant0b60f03d3c5f73319daa22622e8331506b08eef18894b7bd01c6a22e3f4c17c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c587c64c9c1c6cd360e22c22152f24f189198cd6605f9d791bf8469b44ab856c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant0b60f03d3c5f73319daa22622e8331506b08eef18894b7bd01c6a22e3f4c17c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b98228f72b35fdb6ac3e195b5cef88f33256dfdaffc48ffde7f641b11903339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eisensteinSeriesMF {k : ℤ} {N : ℕ} [NeZero N] (hk : 3 ≤ k) (a : Fin 2 → ZMod N) :
    ModularForm Γ(N) k where
  toFun := eisensteinSeriesSIF a k
  slash_action_eq' := (eisensteinSeriesSIF a k).slash_action_eq'
  holo' := eisensteinSeriesSIF_mdifferentiable hk a
  bdd_at_cusps' {c} hc := by
    rw [Subgroup.IsArithmetic.isCusp_iff_isCusp_SL2Z] at hc
    rw [OnePoint.isBoundedAt_iff_forall_SL2Z hc]
    exact fun γ hγ ↦ isBoundedAtImInfty_eisensteinSeriesSIF a hk γ

/-- Normalised Eisenstein series of level 1 and weight `k`,
here they have been scaled by `1/2` since we sum over coprime pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant0b60f03d3c5f73319daa22622e8331506b08eef18894b7bd01c6a22e3f4c17c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant0b60f03d3c5f73319daa22622e8331506b08eef18894b7bd01c6a22e3f4c17c7.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94155547e336c1db1f3f3ad67b6a11369affa7c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
