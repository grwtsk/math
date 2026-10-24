# toQuasiIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f2f969fb54d5adea4c1cc92bec6a68072b435c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7669dcbb-d069-ccf9-9efd-a947e8ae84cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d08b0096-a5e6-23c6-2288-9482bb4cff7b",
  "kind": "theorem",
  "lexical_name": "toQuasiIso_inv",
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
  "slug": "toquasiiso-inv--f1753a170ce2523e550b8e97",
  "source": {
    "blob": "6f2f969fb54d5adea4c1cc92bec6a68072b435c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1753a170ce2523e550b8e97793f890133eb4011c7ce2a1f0a3224190bcf4d61",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d08b0096-a5e6-23c6-2288-9482bb4cff7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toQuasiIso_inv {C D : HomologicalComplex W c} (e : HomotopyEquiv C D) (i : ι) :
    (@asIso _ _ _ _ _ (e.toQuasiIso.1 i)).inv = (homologyFunctor W c i).map e.inv := by
  symm
  haveI := e.toQuasiIso.1 i -- Porting note: Added this to get `asIso_hom` to work.
  simp only [← Iso.hom_comp_eq_id, asIso_hom, ← Functor.map_comp, ← (homologyFunctor W c i).map_id,
    homology_map_eq_of_homotopy e.homotopyHomInvId _]
#align homotopy_equiv.to_quasi_iso_inv HomotopyEquiv.toQuasiIso_inv

end

end HomotopyEquiv

namespace HomologicalComplex.Hom

section ToSingle₀

variable {W : Type*} [Category W] [Abelian W]

section

variable {X : ChainComplex W ℕ} {Y : W} (f : X ⟶ (ChainComplex.single₀ _).obj Y) [hf : QuasiIso f]

/-- If a chain map `f : X ⟶ Y[0]` is a quasi-isomorphism, then the cokernel of the differential
`d : X₁ → X₀` is isomorphic to `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f2f969fb54d5adea4c1cc92bec6a68072b435c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
