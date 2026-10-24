# MultilinearMap.domCoprod_alternization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72f7db1e-92d6-3d6b-70fd-c95285597a57",
  "kind": "theorem",
  "lexical_name": "MultilinearMap.domCoprod_alternization",
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
  "slug": "multilinearmap-domcoprod-alternization--4f05da66f9e1031703c237a5",
  "source": {
    "blob": "2fce6ce35d7fb13fd09ab98df1c48322b29f46ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 208,
    "path": "GRWTSK/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f05da66f9e1031703c237a51c0875d61918022aa531fa2e713bc90954e804c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72f7db1e-92d6-3d6b-70fd-c95285597a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MultilinearMap.domCoprod_alternization [DecidableEq ιa] [DecidableEq ιb]
    (a : MultilinearMap R' (fun _ : ιa => Mᵢ) N₁) (b : MultilinearMap R' (fun _ : ιb => Mᵢ) N₂) :
    MultilinearMap.alternatization (MultilinearMap.domCoprod a b) =
      a.alternatization.domCoprod (MultilinearMap.alternatization b) := by
  apply coe_multilinearMap_injective
  rw [domCoprod_coe, MultilinearMap.alternatization_coe,
    Finset.sum_partition (QuotientGroup.leftRel (Perm.sumCongrHom ιa ιb).range)]
  congr 1
  ext1 σ
  induction σ using Quotient.inductionOn' with
  | h σ =>
  set f := sumCongrHom ιa ιb
  calc
    ∑ τ ∈ _, sign τ • domDomCongr τ (a.domCoprod b) =
        ∑ τ ∈ {τ | τ⁻¹ * σ ∈ f.range}, sign τ • domDomCongr τ (a.domCoprod b) := by
      simp [QuotientGroup.leftRel_apply, f]
    _ = ∑ τ ∈ {τ | τ⁻¹ ∈ f.range}, sign (σ * τ) • domDomCongr (σ * τ) (a.domCoprod b) := by
      conv_lhs => rw [← Finset.map_univ_equiv (Equiv.mulLeft σ), Finset.filter_map, Finset.sum_map]
      simp [Function.comp_def, -MonoidHom.mem_range]
    _ = ∑ τ, sign (σ * f τ) • domDomCongr (σ * f τ) (a.domCoprod b) := by
      simp_rw [f, Subgroup.inv_mem_iff, MonoidHom.mem_range, Finset.univ_filter_exists,
        Finset.sum_image sumCongrHom_injective.injOn]
    _ = ∑ τ : Perm ιa × Perm ιb,
         sign σ • (domDomCongrEquiv σ) (sign τ.1 • sign τ.2 •
           (domDomCongr τ.1 a).domCoprod (domDomCongr τ.2 b)) := by
      simp [f, domDomCongr_mul, domCoprod_domDomCongr_sumCongr, mul_smul]
    _ = domCoprod.summand (alternatization a) (alternatization b) (Quotient.mk'' σ) := by
      simp [domCoprod.summand_mk'', domCoprod_alternization_coe, ← domDomCongrEquiv_apply,
        Finset.smul_sum, ← Finset.sum_product']

/-- Taking the `MultilinearMap.alternatization` of the `MultilinearMap.domCoprod` of two
`AlternatingMap`s gives a scaled version of the `AlternatingMap.coprod` of those maps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fce6ce35d7fb13fd09ab98df1c48322b29f46ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
