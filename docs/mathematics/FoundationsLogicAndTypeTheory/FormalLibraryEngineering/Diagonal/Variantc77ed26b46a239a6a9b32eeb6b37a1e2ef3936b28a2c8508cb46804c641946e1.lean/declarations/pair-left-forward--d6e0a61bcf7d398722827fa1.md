# pair_left_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5108e793-4e91-af91-64ed-b1232b65d8e8",
  "kind": "theorem",
  "lexical_name": "pair_left_forward",
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
  "slug": "pair-left-forward--d6e0a61bcf7d398722827fa1",
  "source": {
    "blob": "05824c89348203f442239a609d1e1bf4bed1e2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 803,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e0a61bcf7d398722827fa11aa2d72fd278f37d0f6665965af8b28000748c35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5108e793-4e91-af91-64ed-b1232b65d8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_left_forward {v a x : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (ha : HasType P Γ a B.yType) (ma : WellModed γ a .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hg : Proves P Γ γ (B.good L.code KY.code KP.code v))
    (hp : Proves P Γ γ (B.ev (B.pair L.code KY.code KP.code v a) (B.observation.tagged L.code
      1 x))) :
    Proves P Γ γ (B.ev v (B.observation.tagged L.code 0 x)) := by
  have ht := H.observation.tagged_typed 1 hx mx
  have h₀ := H.observation.tagged_typed 0 hx mx
  have fp := L.ex_formula KY H.y_sorted H.y_mode (H.formExBody_family KY KP hv mv ht.1 ht.2)
  have fq := H.edge_formula KY KP true ha ma ht.1 ht.2
  have hp' := (H.pair_evaluation KY KP hv mv ha ma ht.1 ht.2).1.prove hp
  rw [H.pairForm_eq KY KP] at hp'
  have he := L.select_disj_left fp fp fq fq fp.equivalent_refl fq.equivalent_refl hp'
    (H.edge_wrong_tag KY KP true 1 (by decide) ha ma hx mx)
  apply H.formEx_elim KY KP hv mv ht.1 ht.2 (H.ev_formula hv mv h₀.1 h₀.2) he
  intro Δ δ e y hy my hed hpv
  simp only [ev_rename,ObservationCode.tagged_rename]
  simp only [ObservationCode.tagged_rename] at hed
  have hx' := x_typed_rename (B := B) e hx
  have h₀' := (H.rename e).observation.tagged_typed 0 hx' (e.moded mx)
  have hg' := hg.rename e
  simp only [good_rename] at hg'
  have er := (H.rename e).edge_to_tagged (KY.rename e) (KP.rename e) false hy my hx' (e.moded
    mx) hed
  exact ((H.rename e).relation_elim (KY.rename e) (KP.rename e) (v_typed_rename (B := B) e hv)
    (e.moded mv) hy my h₀'.1 h₀'.2 er hg').1.prove hpv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05824c89348203f442239a609d1e1bf4bed1e2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
