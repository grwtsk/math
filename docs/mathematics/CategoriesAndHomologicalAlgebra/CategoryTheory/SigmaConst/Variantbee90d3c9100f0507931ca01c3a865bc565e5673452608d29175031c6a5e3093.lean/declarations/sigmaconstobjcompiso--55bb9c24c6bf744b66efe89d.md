# sigmaConstObjCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6387de25564ae3906c7a459ef403f625ee3ab8a54eddd1d570d3216aa1ac4b1",
  "kind": "def",
  "lexical_name": "sigmaConstObjCompIso",
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
  "slug": "sigmaconstobjcompiso--55bb9c24c6bf744b66efe89d",
  "source": {
    "blob": "046804b58a9946f31eb9271a0c734ceed78169bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55bb9c24c6bf744b66efe89d3b3536bd58cf34089a3a821a88562931479d3701",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6387de25564ae3906c7a459ef403f625ee3ab8a54eddd1d570d3216aa1ac4b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sigmaConstObjCompIso : sigmaConst.obj X ⋙ F ≅ sigmaConst.obj (F.obj X) :=
  NatIso.ofComponents (fun _ ↦ PreservesCoproduct.iso _ _) (fun {T₁ T₂} f ↦ by
    dsimp [Sigma.map']
    rw [← cancel_epi (PreservesCoproduct.iso F (fun (_ : T₁) ↦ X)).inv,
      ← cancel_mono (PreservesCoproduct.iso F (fun (_ : T₂) ↦ X)).inv,
      Iso.inv_hom_id_assoc, Category.assoc, Category.assoc, Iso.hom_inv_id, Category.comp_id,
      PreservesCoproduct.inv_hom, PreservesCoproduct.inv_hom, sigmaComparison_map_desc]
    cat_disch)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `046804b58a9946f31eb9271a0c734ceed78169bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
