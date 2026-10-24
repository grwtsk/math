# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:110172a95866b532fa54b944fc7b881db1a85a1525154d6126c4e73ed94adf62",
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
  "slug": "instance--4436dee799768d6bdeab1ad6",
  "source": {
    "blob": "fa18a8d96615405a1bfb67f9abeb900875238a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4436dee799768d6bdeab1ad642d942bceb485d14acb8c2d59cd873f52fc6d671",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:110172a95866b532fa54b944fc7b881db1a85a1525154d6126c4e73ed94adf62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (b : Basis ι F[X] S) {I : Ideal S} (hI : I ≠ ⊥) (i : ι) :
    FiniteDimensional F (F[X] ⧸ span ({I.smithCoeffs b hI i} : Set F[X])) := by
  -- Porting note: we need to do this proof in two stages otherwise it times out
  -- original proof: (AdjoinRoot.powerBasis <| I.smithCoeffs_ne_zero b hI i).FiniteDimensional
  -- The first tactic takes over 10 seconds, spending a lot of time in checking
  -- that instances on the quotient commute.  My guess is that we unfold
  -- operations to the `Quotient.lift` level and then end up comparing huge
  -- terms.  We should probably make most of the quotient operations
  -- irreducible so that they don't expose `Quotient.lift` accidentally.
  refine PowerBasis.finiteDimensional ?_
  refine AdjoinRoot.powerBasis ?_
  refine I.smithCoeffs_ne_zero b hI i

-- Porting note: this proof was already slow in mathlib3 and it is even slower now
-- See: https://github.com/leanprover-community/mathlib4/issues/5028
set_option maxHeartbeats 1000000 in
/-- For a nonzero element `f` in a `F[X]`-module `S`, the dimension of $S/\langle f \rangle$ as an
`F`-vector space is the degree of the norm of `f` relative to `F[X]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa18a8d96615405a1bfb67f9abeb900875238a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
