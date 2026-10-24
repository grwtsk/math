# toSingle₀Equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21d3af5453d51fb12f29fa4b19cc200d45fd41b2f4acf49d0daefd4639bd8a36",
  "kind": "def",
  "lexical_name": "toSingle₀Equiv",
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
  "slug": "tosingle-equiv--5a9febd7fe58ce1a570ece0f",
  "source": {
    "blob": "a3bfeb86550c5c45d87f030aecdf8ab60a723cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a9febd7fe58ce1a570ece0ffa5b2185872e28b8b220cd1ff6bb3f8f77a9bd3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21d3af5453d51fb12f29fa4b19cc200d45fd41b2f4acf49d0daefd4639bd8a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toSingle₀Equiv (C : ChainComplex V ℕ) (X : V) :
    (C ⟶ (single₀ V).obj X) ≃ { f : C.X 0 ⟶ X // C.d 1 0 ≫ f = 0 } where
  toFun φ := ⟨φ.f 0, by rw [← φ.comm 1 0, HomologicalComplex.single_obj_d, comp_zero]⟩
  invFun f := HomologicalComplex.mkHomToSingle f.1 (fun i hi => by
    obtain rfl : i = 1 := by simpa using hi.symm
    exact f.2)
  left_inv φ := by cat_disch
  right_inv f := by simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3bfeb86550c5c45d87f030aecdf8ab60a723cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
