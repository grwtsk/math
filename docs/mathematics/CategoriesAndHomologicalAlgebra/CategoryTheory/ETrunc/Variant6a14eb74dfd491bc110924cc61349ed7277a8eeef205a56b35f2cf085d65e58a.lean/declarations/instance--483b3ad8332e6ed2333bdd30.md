# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38c19c09b57f85cce9b3828c70ab00089abaa9c34f35451e0369a69edbfd62ef",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--483b3ad8332e6ed2333bdd30",
  "source": {
    "blob": "2f2a24dc4f3f29c24f9201482e82dcf655219d03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 477,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:483b3ad8332e6ed2333bdd30480e40ffd94902fd0a1c6d92a4accb0d26cdcd81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38c19c09b57f85cce9b3828c70ab00089abaa9c34f35451e0369a69edbfd62ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsIso (t.eTruncLTGELTSelfToGELT a b) := by
  rw [NatTrans.isIso_iff_isIso_app]
  intro X
  induction a using WithBotTop.rec with
  | bot => simpa using inferInstanceAs (IsIso ((t.eTruncLTι b).app ((t.eTruncLT.obj b).obj X)))
  | coe a =>
    induction b using WithBotTop.rec with
    | bot => simpa [isIsoZero_iff_source_target_isZero] using
        (t.eTruncGE.obj a).map_isZero (Functor.zero_obj _)
    | coe b =>
      simp only [eTruncLT_obj_coe, eTruncGE_obj_coe, eTruncLTGELTSelfToGELT_app,
        eTruncLT_map_eq_truncLTι]
      infer_instance
    | top => simpa using inferInstanceAs (IsIso (𝟙 _))
  | top =>
    exact ⟨0, ((t.eTruncLT.obj b).map_isZero (by simp)).eq_of_src _ _,
      IsZero.eq_of_src (by simp) _ _⟩

end

/-- The commutation natural isomorphism
`t.eTruncGE.obj a ⋙ t.eTruncLT.obj b ≅ t.eTruncLT.obj b ⋙ t.eTruncGE.obj a`
for all `a` and `b` in `EInt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2a24dc4f3f29c24f9201482e82dcf655219d03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
