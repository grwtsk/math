# liftEquiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8df2d40021bec2b26cabade219cd147c54ff2e6d0afcde0221d367909aad3162",
  "kind": "def",
  "lexical_name": "liftEquiv'",
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
  "slug": "liftequiv--8d445d2b8f0be18f4719da64",
  "source": {
    "blob": "3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 330,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d445d2b8f0be18f4719da648e1dfc4c381db167cb924ca1723d74a2f3b7e0a6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8df2d40021bec2b26cabade219cd147c54ff2e6d0afcde0221d367909aad3162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftEquiv' (pb : PowerBasis A S) :
    (S →ₐ[A] B) ≃ { y : B // y ∈ ((minpoly A pb.gen).map (algebraMap A B)).roots } :=
  pb.liftEquiv.trans ((Equiv.refl _).subtypeEquiv fun x => by
    rw [Equiv.refl_apply, mem_roots_iff_aeval_eq_zero]
    · simp
    · exact map_monic_ne_zero (minpoly.monic pb.isIntegral_gen))
#align power_basis.lift_equiv' PowerBasis.liftEquiv'

/-- There are finitely many algebra homomorphisms `S →ₐ[A] B` if `S` is of the form `A[x]`
and `B` is an integral domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
