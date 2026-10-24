# LinearIndependent.linearIndependent_algebraMap_comp_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97d07859-7e11-41d3-a1ed-4a866ecac6a9",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.linearIndependent_algebraMap_comp_aux",
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
  "slug": "linearindependent-linearindependent-algebramap-comp-aux--96e71018d6eb46d9e08e0dc7",
  "source": {
    "blob": "900b8767538ade239ecebc8c9310ccabea2fbcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variante0534a9a88049d5c6288d9ea634aa91bda8d2c833604baeffd812d6f2a236948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e71018d6eb46d9e08e0dc76cc3f0237447d1b3344b773f2eda9c333e1a10c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variante0534a9a88049d5c6288d9ea634aa91bda8d2c833604baeffd812d6f2a236948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97d07859-7e11-41d3-a1ed-4a866ecac6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LinearIndependent.linearIndependent_algebraMap_comp_aux {K : Type*} (L : Type*)
    [Field K] [Field L] [Algebra K L]
    {v : ι → ι' → K} (hv : LinearIndependent K v) :
    LinearIndependent L (fun i ↦ algebraMap K L ∘ v i) := by
  classical
  let : Fintype ι' := .ofFinite ι'
  let I : Set (ι' → K) := hv.linearIndepOn_id.extend (subset_univ _)
  let b : Module.Basis I K (ι' → K) := .extend hv.linearIndepOn_id
  let b' : Module.Basis I L (ι' → L) := (b.baseChange L).map (TensorProduct.piScalarRight K L L ι')
  let v' (i : ι) : I := ⟨v i, hv.linearIndepOn_id.subset_extend _ <| mem_range_self i⟩
  have hv' : b' ∘ v' = fun i ↦ algebraMap K L ∘ v i := by
    ext; simp [b', b, v', Module.Basis.extend, Algebra.algebraMap_eq_smul_one]
  have h_inj : Injective v' := fun i j hij ↦ by have : Injective v := hv.injective; aesop
  rw [← hv']
  exact b'.linearIndependent.comp _ h_inj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variante0534a9a88049d5c6288d9ea634aa91bda8d2c833604baeffd812d6f2a236948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variante0534a9a88049d5c6288d9ea634aa91bda8d2c833604baeffd812d6f2a236948.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `900b8767538ade239ecebc8c9310ccabea2fbcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
