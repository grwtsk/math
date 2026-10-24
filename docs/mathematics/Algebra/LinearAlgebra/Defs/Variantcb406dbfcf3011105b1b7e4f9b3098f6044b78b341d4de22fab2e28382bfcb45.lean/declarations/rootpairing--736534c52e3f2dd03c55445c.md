# RootPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b55f2acfd30cbf5676537fcc6aaba86d74fe7ed4f01629f5054fb11ab5d835b7",
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
  "slug": "rootpairing--736534c52e3f2dd03c55445c",
  "source": {
    "blob": "6127116e95964fe6dd67c571b7f8c4b677e62c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:736534c52e3f2dd03c55445c8910177c73a17623d7a1c57365c81617cb9b9f77",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b55f2acfd30cbf5676537fcc6aaba86d74fe7ed4f01629f5054fb11ab5d835b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RootPairing extends PerfectPairing R M N where
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
  reflection_perm : ι → (ι ≃ ι)
  reflection_perm_root : ∀ i j,
    root j - toPerfectPairing (root j) (coroot i) • root i = root (reflection_perm i j)
  reflection_perm_coroot : ∀ i j,
    coroot j - toPerfectPairing (root i) (coroot j) • coroot i = coroot (reflection_perm i j)

/-- A root datum is a root pairing with coefficients in the integers and for which the root and
coroot spaces are finitely-generated free Abelian groups.

Note that the latter assumptions `[Finite ℤ X₁] [Finite ℤ X₂]` should be supplied as mixins, and
that freeness follows automatically since two finitely-generated Abelian groups in perfect pairing
are necessarily free. Moreover Lean knows this, e.g., via `PerfectPairing.reflexive_left`,
`Module.instNoZeroSMulDivisorsOfIsDomain`, `Module.free_of_finite_type_torsion_free'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6127116e95964fe6dd67c571b7f8c4b677e62c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
