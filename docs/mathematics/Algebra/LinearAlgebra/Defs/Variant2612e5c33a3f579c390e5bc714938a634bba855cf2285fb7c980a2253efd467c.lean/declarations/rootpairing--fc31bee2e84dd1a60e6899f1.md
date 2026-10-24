# RootPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ed2216a6852147c5e6c351566079bad68715217fb4ec8d3a789ea5a966f6ec9",
  "kind": "structure",
  "lexical_name": "RootPairing",
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
  "slug": "rootpairing--fc31bee2e84dd1a60e6899f1",
  "source": {
    "blob": "1f43776dfd889e9548fedf53aef6fff3fe2d894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant2612e5c33a3f579c390e5bc714938a634bba855cf2285fb7c980a2253efd467c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc31bee2e84dd1a60e6899f1012410a170e7165e6a3cb507144c69a8e65ebefc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant2612e5c33a3f579c390e5bc714938a634bba855cf2285fb7c980a2253efd467c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ed2216a6852147c5e6c351566079bad68715217fb4ec8d3a789ea5a966f6ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RootPairing extends M →ₗ[R] N →ₗ[R] R where
  [isPerfPair_toLinearMap : toLinearMap.IsPerfPair]
  /-- A parametrized family of vectors, called roots. -/
  root : ι ↪ M
  /-- A parametrized family of dual vectors, called coroots. -/
  coroot : ι ↪ N
  root_coroot_two : ∀ i, toLinearMap (root i) (coroot i) = 2
  /-- A parametrized family of permutations, induced by reflections. This corresponds to the
  classical requirement that the symmetry attached to each root (later defined in
  `RootPairing.reflection`) leave the whole set of roots stable: as explained above, we
  formalize this stability by fixing the image of the roots through each reflection (whence the
  permutation); and similarly for coroots. -/
  reflectionPerm : ι → (ι ≃ ι)
  reflectionPerm_root : ∀ i j,
    root j - toLinearMap (root j) (coroot i) • root i = root (reflectionPerm i j)
  reflectionPerm_coroot : ∀ i j,
    coroot j - toLinearMap (root i) (coroot j) • coroot i = coroot (reflectionPerm i j)

attribute [instance] RootPairing.isPerfPair_toLinearMap

/-- A root datum is a root pairing with coefficients in the integers and for which the root and
coroot spaces are finitely-generated free Abelian groups.

Note that the latter assumptions `[Finite ℤ X₁] [Finite ℤ X₂]` should be supplied as mixins, and
that freeness follows automatically since two finitely-generated Abelian groups in perfect pairing
are necessarily free. Moreover Lean knows this, e.g., via `PerfectPairing.reflexive_left`,
`IsReflexive.to_isTorsionFree`, `Module.free_of_finite_type_torsion_free'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant2612e5c33a3f579c390e5bc714938a634bba855cf2285fb7c980a2253efd467c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant2612e5c33a3f579c390e5bc714938a634bba855cf2285fb7c980a2253efd467c.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f43776dfd889e9548fedf53aef6fff3fe2d894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
