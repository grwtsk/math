# zerothHomotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9999ab774fd1e11cbfe78517e9d69b432ed688c99f9f97104b4913c97c8575c1",
  "kind": "def",
  "lexical_name": "zerothHomotopyEquiv",
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
  "slug": "zerothhomotopyequiv--f63471bd3db96ec6889bd237",
  "source": {
    "blob": "14bbc2d95b911d16e811828ade1b3ed56d4a4949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f63471bd3db96ec6889bd2373780fdf4637b9dcac112850b96182ce59ad11d7b",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9999ab774fd1e11cbfe78517e9d69b432ed688c99f9f97104b4913c97c8575c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def zerothHomotopyEquiv : ZerothHomotopy X ≃ (toSSet.obj X).π₀ where
  toFun :=
    ZerothHomotopy.lift (SSet.π₀.mk ∘ toSSetObj₀Equiv.symm)
      (fun _ _ p ↦ SSet.π₀.sound (toSSetObjEdgeEquiv.symm (pathEquiv.symm p)))
  invFun := SSet.π₀.lift (ZerothHomotopy.mk ∘ toSSetObj₀Equiv) (fun x y e ↦ by
    obtain ⟨x, rfl⟩ := toSSetObj₀Equiv.symm.surjective x
    obtain ⟨y, rfl⟩ := toSSetObj₀Equiv.symm.surjective y
    exact ZerothHomotopy.sound (pathEquiv (toSSetObjEdgeEquiv e)))
  left_inv x := by induction x; simp
  right_inv x := by induction x; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bbc2d95b911d16e811828ade1b3ed56d4a4949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
