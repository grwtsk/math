# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:835bcbf06fd29e65b41cacbffabc5afc150330e264d9f9f2ea4903ba4802c847",
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
  "slug": "instance--5fc6bfab01fa95cd06d37681",
  "source": {
    "blob": "f07d7caeee0879f2448bc3904c624bd300c49ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 153,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SemiDirect/Variant6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fc6bfab01fa95cd06d37681dff680c1da884a76bc73e23424b9c03bd16395f3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SemiDirect/Variant6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:835bcbf06fd29e65b41cacbffabc5afc150330e264d9f9f2ea4903ba4802c847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LieAlgebra.IsExtension (inl ψ) (projr ψ) where
  ker_eq_bot := by simp [LieHom.ker_eq_bot]
  range_eq_top := by simp [LieHom.range_eq_top]
  exact := by ext ⟨x, y⟩; aesop

end

variable (R K L) in
/-- The product of two Lie algebras realized through a semidirect sum with trivial `ψ` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/SemiDirect/Variant6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SemiDirect/Variant6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f07d7caeee0879f2448bc3904c624bd300c49ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
