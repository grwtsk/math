# Submodule.smithNormalForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c21d6fd21cbe9637add3936021b8900be62c549b6adf1514ebe93b6794b8d75f",
  "kind": "def",
  "lexical_name": "Submodule.smithNormalForm",
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
  "slug": "submodule-smithnormalform--ce38b6074e6e813db6b8f1e3",
  "source": {
    "blob": "ec53b8f86360e7e285ca6ba9761a385f806676e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 570,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce38b6074e6e813db6b8f1e30778b4571935a52cd9a25d9ca5d1ce557dfe8ad4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c21d6fd21cbe9637add3936021b8900be62c549b6adf1514ebe93b6794b8d75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Submodule.smithNormalForm [Finite ι] (b : Basis ι R M) (N : Submodule R M) :
    Σn : ℕ, Basis.SmithNormalForm N ι n :=
  let ⟨m, n, bM, bN, f, a, snf⟩ := N.smithNormalFormOfLE b ⊤ le_top
  let bM' := bM.map (LinearEquiv.ofTop _ rfl)
  let e := bM'.indexEquiv b
  ⟨n, bM'.reindex e, bN.map (comapSubtypeEquivOfLe le_top), f.trans e.toEmbedding, a, fun i ↦ by
    simp only [snf, Basis.map_apply, LinearEquiv.ofTop_apply, Submodule.coe_smul_of_tower,
      Submodule.comapSubtypeEquivOfLe_apply_coe, Basis.reindex_apply,
      Equiv.toEmbedding_apply, Function.Embedding.trans_apply, Equiv.symm_apply_apply]⟩
#align submodule.smith_normal_form Submodule.smithNormalForm

section Ideal

variable {S : Type*} [CommRing S] [IsDomain S] [Algebra R S]

/-- If `S` a finite-dimensional ring extension of a PID `R` which is free as an `R`-module,
then any nonzero `S`-ideal `I` is free as an `R`-submodule of `S`, and we can
find a basis for `S` and `I` such that the inclusion map is a square diagonal
matrix.

See `Ideal.exists_smith_normal_form` for a version of this theorem that doesn't
need to map `I` into a submodule of `R`.

This is a strengthening of `Submodule.basisOfPid`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec53b8f86360e7e285ca6ba9761a385f806676e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
