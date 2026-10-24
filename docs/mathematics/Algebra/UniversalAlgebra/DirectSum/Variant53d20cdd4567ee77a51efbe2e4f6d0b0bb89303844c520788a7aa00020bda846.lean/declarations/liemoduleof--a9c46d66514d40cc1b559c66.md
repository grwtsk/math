# lieModuleOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd53d457a56061c99bcaff771be616996581d96cf3379e25bb72f683f8654c99",
  "kind": "def",
  "lexical_name": "lieModuleOf",
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
  "slug": "liemoduleof--a9c46d66514d40cc1b559c66",
  "source": {
    "blob": "f82326d1d23cc599b1d3d588908c5b83bf500304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variant53d20cdd4567ee77a51efbe2e4f6d0b0bb89303844c520788a7aa00020bda846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9c46d66514d40cc1b559c6606b504e6cf0d27a1f7a7f69df5fffd1153b167ec",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DirectSum/Variant53d20cdd4567ee77a51efbe2e4f6d0b0bb89303844c520788a7aa00020bda846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd53d457a56061c99bcaff771be616996581d96cf3379e25bb72f683f8654c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lieModuleOf [DecidableEq ι] (j : ι) : M j →ₗ⁅R,L⁆ ⨁ i, M i :=
  { lof R ι M j with
    map_lie' := fun {x m} => by
      ext i
      by_cases h : j = i
      · rw [← h]; simp
      · -- This used to be the end of the proof before https://github.com/leanprover/lean4/pull/2644
        -- old proof `simp [lof, lsingle, h]`
        simp only [lof, lsingle, AddHom.toFun_eq_coe, lie_module_bracket_apply]
        -- The coercion in the goal is `DFunLike.coe (β := fun x ↦ Π₀ (i : ι), M i)`
        -- but the lemma is expecting `DFunLike.coe (β := fun x ↦ ⨁ (i : ι), M i)`
        erw [AddHom.coe_mk]
        simp [h] }

/-- The projection map onto one component, as a morphism of Lie modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DirectSum/Variant53d20cdd4567ee77a51efbe2e4f6d0b0bb89303844c520788a7aa00020bda846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variant53d20cdd4567ee77a51efbe2e4f6d0b0bb89303844c520788a7aa00020bda846.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f82326d1d23cc599b1d3d588908c5b83bf500304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
