# ofTwoCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c731e32e853a9366c21347f466b74193df8d3eff07e22dd883123d357b60fe3e",
  "kind": "def",
  "lexical_name": "ofTwoCocycle",
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
  "slug": "oftwococycle--2d064cd64ca9c57c1392c898",
  "source": {
    "blob": "3004ea302df468384135cd2540eb5c44bba4a8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 244,
    "path": "GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d064cd64ca9c57c1392c89892885f1bc28521a4ad4b1ae6b40c6ccca778424b",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c731e32e853a9366c21347f466b74193df8d3eff07e22dd883123d357b60fe3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofTwoCocycle : Extension R M L where
  L := LieAlgebra.ofTwoCocycle c
  instLieRing := inferInstance
  instLieAlgebra := inferInstance
  incl :=
    { toFun x := ofProd c (0, x)
      map_add' _ _ := by simp [← of_add]
      map_smul' _ _ := by simp [← of_smul]
      map_lie' {_ _} := by simp [trivial_lie_zero, bracket_ofTwoCocycle] }
  proj :=
    { toFun x := ((ofProd c).symm x).1
      map_add' _ _ := by simp
      map_smul' _ _ := by simp
      map_lie' {_ _} := by simp [bracket_ofTwoCocycle] }
  IsExtension :=
    { ker_eq_bot := by
        rw [LieHom.ker_eq_bot]
        intro x y
        simp
      range_eq_top := by
        rw [LieHom.range_eq_top]
        intro x
        use (ofProd c (x, 0))
        simp
      exact := by
        ext x
        constructor
        · intro hx
          obtain ⟨n, h⟩ := hx
          rw [← h]
          rfl
        · intro hx
          have : ((ofProd c).symm x).1 = 0 := hx
          simp only [LieHom.mem_range, LieHom.coe_mk]
          use ((ofProd c).symm x).2
          nth_rw 2 [← Equiv.apply_symm_apply (ofProd c) x]
          rw [← this] }

/-- The Lie algebra isomorphism given by the type synonym. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3004ea302df468384135cd2540eb5c44bba4a8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
