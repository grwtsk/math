# fromSingle₀Equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb2f67016a04c0019b418b744b4a349f0fbe55daf55e6e580078176605f73c3a",
  "kind": "def",
  "lexical_name": "fromSingle₀Equiv",
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
  "slug": "fromsingle-equiv--db7171f25fe7dd2eba562294",
  "source": {
    "blob": "a887d974ebf5e302c3c9bef173627c00089ff24d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 291,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db7171f25fe7dd2eba5622945488bfe9add6c94cd66560bc9f6a5088a3fe7785",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb2f67016a04c0019b418b744b4a349f0fbe55daf55e6e580078176605f73c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fromSingle₀Equiv (C : CochainComplex V ℕ) (X : V) :
    ((single₀ V).obj X ⟶ C) ≃ { f : X ⟶ C.X 0 // f ≫ C.d 0 1 = 0 } where
  toFun φ := ⟨φ.f 0, by rw [φ.comm 0 1, HomologicalComplex.single_obj_d, zero_comp]⟩
  invFun f := HomologicalComplex.mkHomFromSingle f.1 (fun i hi => by
    obtain rfl : i = 1 := by simpa using hi.symm
    exact f.2)
  left_inv φ := by aesop_cat
  right_inv := by aesop_cat

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a887d974ebf5e302c3c9bef173627c00089ff24d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
