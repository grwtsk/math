# le_of_carrier_le_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e981f95541f2715b2acfaec0acefb5585d1a0bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3bff494-8d99-b152-647e-8276ede35ceb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdb08f7e-872e-7bd0-f6c1-a00b616e1c19",
  "kind": "theorem",
  "lexical_name": "le_of_carrier_le_iSup",
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
  "slug": "le-of-carrier-le-isup--31b93a155ccc72003c3cc06a",
  "source": {
    "blob": "7e981f95541f2715b2acfaec0acefb5585d1a0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31b93a155ccc72003c3cc06a0d2a15f2125765a31d1f38ed3428806a56c7e8be",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdb08f7e-872e-7bd0-f6c1-a00b616e1c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_carrier_le_iSup {ι} {ρ : ι → Lifts F E K} {σ τ : Lifts F E K}
    (hσ : ∀ i, ρ i ≤ σ) (hτ : ∀ i, ρ i ≤ τ) (carrier_le : σ.carrier ≤ ⨆ i, (ρ i).carrier) :
    σ ≤ τ :=
  le_iff.mpr ⟨carrier_le.trans (iSup_le fun i ↦ (hτ i).1), algHom_ext_of_eq_adjoin _
      (carrier_le.antisymm (iSup_le fun i ↦ (hσ i).1)|>.trans <| iSup_eq_adjoin _ _) fun x hx ↦
    have ⟨i, hx⟩ := Set.mem_iUnion.mp hx
    ((hτ i).2 ⟨x, hx⟩).trans ((hσ i).2 ⟨x, hx⟩).symm⟩

/-- `σ : L →ₐ[F] K` is an extendible lift ("extendible pair" in [Isaacs1980]) if for every
intermediate field `M` that is finite-dimensional over `L`, `σ` extends to some `M →ₐ[F] K`.
In our definition we only require `M` to be finitely generated over `L`, which is equivalent
if the ambient field `E` is algebraic over `F` (which is the case in our main application).
We also allow the domain of the extension to be an intermediate field that properly contains `M`,
since one can always restrict the domain to `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e981f95541f2715b2acfaec0acefb5585d1a0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
