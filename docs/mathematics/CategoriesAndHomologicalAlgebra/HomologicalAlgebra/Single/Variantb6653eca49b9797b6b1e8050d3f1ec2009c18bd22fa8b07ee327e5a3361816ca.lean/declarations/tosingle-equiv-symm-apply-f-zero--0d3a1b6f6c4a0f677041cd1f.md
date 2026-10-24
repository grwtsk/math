# toSingle₀Equiv_symm_apply_f_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63a47810-7640-ece3-61bc-aa6811921b24",
  "kind": "lemma",
  "lexical_name": "toSingle₀Equiv_symm_apply_f_zero",
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
  "slug": "tosingle-equiv-symm-apply-f-zero--0d3a1b6f6c4a0f677041cd1f",
  "source": {
    "blob": "c4c811ae23a6910b04b1519e9083656f70f9bd46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantb6653eca49b9797b6b1e8050d3f1ec2009c18bd22fa8b07ee327e5a3361816ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d3a1b6f6c4a0f677041cd1f3e08bb7299160a364e58e920c74f235b180a5f54",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantb6653eca49b9797b6b1e8050d3f1ec2009c18bd22fa8b07ee327e5a3361816ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a47810-7640-ece3-61bc-aa6811921b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSingle₀Equiv_symm_apply_f_zero {C : ChainComplex V ℕ} {X : V}
    (f : C.X 0 ⟶ X) (hf : C.d 1 0 ≫ f = 0) :
    ((toSingle₀Equiv C X).symm ⟨f, hf⟩).f 0 = f := by
  simp [toSingle₀Equiv]

set_option backward.isDefEq.respectTransparency.types false in
/-- Morphisms from a single object chain complex with `X` concentrated in degree 0
to an `ℕ`-indexed chain complex `C` are the same as morphisms `f : X → C.X 0`.
-/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantb6653eca49b9797b6b1e8050d3f1ec2009c18bd22fa8b07ee327e5a3361816ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantb6653eca49b9797b6b1e8050d3f1ec2009c18bd22fa8b07ee327e5a3361816ca.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c811ae23a6910b04b1519e9083656f70f9bd46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
