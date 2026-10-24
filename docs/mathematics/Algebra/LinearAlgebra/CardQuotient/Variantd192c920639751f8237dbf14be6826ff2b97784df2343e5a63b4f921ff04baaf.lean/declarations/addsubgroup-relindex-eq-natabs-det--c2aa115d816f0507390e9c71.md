# AddSubgroup.relindex_eq_natAbs_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baef9f05-1082-590f-c16f-725b9ff62380",
  "kind": "theorem",
  "lexical_name": "AddSubgroup.relindex_eq_natAbs_det",
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
  "slug": "addsubgroup-relindex-eq-natabs-det--c2aa115d816f0507390e9c71",
  "source": {
    "blob": "7628fc46b586a165466f26e818e72dbab58e64ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2aa115d816f0507390e9c71f2cd8fd8a6f21f170248f334ce50feac07f1d556",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baef9f05-1082-590f-c16f-725b9ff62380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubgroup.relindex_eq_natAbs_det {E : Type*} [AddCommGroup E]
    (L₁ L₂ : AddSubgroup E) (H : L₁ ≤ L₂) {ι : Type*} [DecidableEq ι] [Fintype ι]
    (b₁ : Basis ι ℤ L₁.toIntSubmodule) (b₂ : Basis ι ℤ L₂.toIntSubmodule) :
    L₁.relindex L₂ = (b₂.det (fun i ↦ ⟨b₁ i, (H (SetLike.coe_mem _))⟩)).natAbs := by
  rw [relindex, index_eq_natAbs_det b₂ _ (b₁.map (addSubgroupOfEquivOfLe H).toIntLinearEquiv.symm)]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7628fc46b586a165466f26e818e72dbab58e64ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
