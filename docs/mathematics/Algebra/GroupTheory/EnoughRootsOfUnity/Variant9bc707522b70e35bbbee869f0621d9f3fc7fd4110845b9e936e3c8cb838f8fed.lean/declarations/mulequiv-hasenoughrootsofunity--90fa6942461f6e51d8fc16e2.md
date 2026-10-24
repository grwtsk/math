# MulEquiv.hasEnoughRootsOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e36b472a-10b0-05a4-f2d2-195e53bd3931",
  "kind": "lemma",
  "lexical_name": "MulEquiv.hasEnoughRootsOfUnity",
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
  "slug": "mulequiv-hasenoughrootsofunity--90fa6942461f6e51d8fc16e2",
  "source": {
    "blob": "0ec1d2dd80df6b72ddcdd0e3021c1364ac4b4277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90fa6942461f6e51d8fc16e2c9c3d1463e13cf2676cf7974f3f474b1758de928",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e36b472a-10b0-05a4-f2d2-195e53bd3931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MulEquiv.hasEnoughRootsOfUnity {n : ℕ} [NeZero n] {M N : Type*} [CommMonoid M]
    [CommMonoid N] [hm : HasEnoughRootsOfUnity M n] (e : rootsOfUnity n M ≃* rootsOfUnity n N) :
    HasEnoughRootsOfUnity N n where
  prim := by
    obtain ⟨m, hm⟩ := hm.prim
    use (e hm.toRootsOfUnity).val.val
    rw [IsPrimitiveRoot.coe_units_iff, IsPrimitiveRoot.coe_submonoidClass_iff]
    refine .map_of_injective ?_ e.injective
    rwa [← IsPrimitiveRoot.coe_submonoidClass_iff, ← IsPrimitiveRoot.coe_units_iff]
  cyc := isCyclic_of_surjective e e.surjective

section cyclic

/-- The group of group homomorphims from a finite cyclic group `G` of order `n` into the
group of units of a ring `M` with all roots of unity is isomorphic to `G` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec1d2dd80df6b72ddcdd0e3021c1364ac4b4277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
