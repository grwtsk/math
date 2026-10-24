# finite_rootsOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb77c6ca9a44dbcb0dc4b0ed016231066c15201adba510a02c23224822315afa",
  "kind": "instance",
  "lexical_name": "finite_rootsOfUnity",
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
  "slug": "finite-rootsofunity--85ffe660be21fb4fc78a52c2",
  "source": {
    "blob": "0ec1d2dd80df6b72ddcdd0e3021c1364ac4b4277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85ffe660be21fb4fc78a52c20fdb3cbb5ef41d42372a0ecd2846185d84dd21f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb77c6ca9a44dbcb0dc4b0ed016231066c15201adba510a02c23224822315afa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finite_rootsOfUnity (M : Type*) [CommMonoid M] (n : ℕ) [NeZero n]
    [HasEnoughRootsOfUnity M n] :
    Finite <| rootsOfUnity n M := by
  have := rootsOfUnity_isCyclic M n
  obtain ⟨g, hg⟩ := IsCyclic.exists_generator (α := rootsOfUnity n M)
  have hg' : g ^ n = 1 := OneMemClass.coe_eq_one.mp g.prop
  let f (j : ZMod n) : rootsOfUnity n M := g ^ (j.val : ℤ)
  refine Finite.of_surjective f fun x ↦ ?_
  obtain ⟨k, hk⟩ := Subgroup.mem_zpowers_iff.mp <| hg x
  refine ⟨k, ?_⟩
  simpa only [ZMod.natCast_val, ← hk, f, ZMod.coe_intCast] using (zpow_eq_zpow_emod' k hg').symm

/-- If `M` satisfies `HasEnoughRootsOfUnity`, then the group of `n`th roots of unity
in `M` (is cyclic and) has order `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EnoughRootsOfUnity/Variant9bc707522b70e35bbbee869f0621d9f3fc7fd4110845b9e936e3c8cb838f8fed.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec1d2dd80df6b72ddcdd0e3021c1364ac4b4277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
