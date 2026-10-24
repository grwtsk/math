# IsBaseChange.map_id_lsmul_eq_lsmul_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bcca27cc1bc59da7d1f1e3e6be9f4554f279fd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 588,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ef19b1e-45f1-40f3-2d71-1f590c14dd4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f89489f-fbe2-56b7-aa91-062318fa50d4",
  "kind": "theorem",
  "lexical_name": "IsBaseChange.map_id_lsmul_eq_lsmul_algebraMap",
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
  "slug": "isbasechange-map-id-lsmul-eq-lsmul-algebramap--c3ed3fea2ed09971ffdc4949",
  "source": {
    "blob": "7bcca27cc1bc59da7d1f1e3e6be9f4554f279fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 588,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3ed3fea2ed09971ffdc4949fd77a5bafdc1a71edfeeccc6aa4a47203c87d1fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f89489f-fbe2-56b7-aa91-062318fa50d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem IsBaseChange.map_id_lsmul_eq_lsmul_algebraMap
    {f : M →ₗ[R] N} (hf : IsBaseChange S f) (x : R) :
    hf.map hf LinearMap.id (LinearMap.lsmul R M x) = LinearMap.lsmul S N (algebraMap R S x) := by
  ext y
  refine IsTensorProduct.inductionOn hf y ?_ (fun _ _ ha hb ↦ by simp [ha, hb])
  intro s m
  rw [hf.map_eq hf]
  simpa using smul_comm x s (f m)

variable {R' S' : Type*} [CommSemiring R'] [CommSemiring S']
variable [Algebra R R'] [Algebra S S'] [Algebra R' S'] [Algebra R S']
variable [IsScalarTower R R' S'] [IsScalarTower R S S']

open IsScalarTower (toAlgHom algebraMap_apply)

variable (R S R' S')

/-- A type-class stating that the following diagram of scalar towers
```
R  →  S
↓     ↓
R' →  S'
```
is a pushout diagram (i.e. `S' = S ⊗[R] R'`)
-/
@[mk_iff]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bcca27cc1bc59da7d1f1e3e6be9f4554f279fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
