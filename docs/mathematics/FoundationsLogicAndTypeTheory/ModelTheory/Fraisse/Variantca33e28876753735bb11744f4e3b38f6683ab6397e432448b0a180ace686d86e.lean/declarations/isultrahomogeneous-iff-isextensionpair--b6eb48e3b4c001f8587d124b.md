# isUltrahomogeneous_iff_IsExtensionPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:068e4c99-a843-19dd-5441-e7b18df238de",
  "kind": "theorem",
  "lexical_name": "isUltrahomogeneous_iff_IsExtensionPair",
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
  "slug": "isultrahomogeneous-iff-isextensionpair--b6eb48e3b4c001f8587d124b",
  "source": {
    "blob": "fc8056b51ff7ff258459ee27596df5dcc0338ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6eb48e3b4c001f8587d124bb16a42b457bb130be456601b9233f393b35df591",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:068e4c99-a843-19dd-5441-e7b18df238de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUltrahomogeneous_iff_IsExtensionPair (M_CG : CG L M) : L.IsUltrahomogeneous M ↔
    L.IsExtensionPair M M := by
  constructor
  · intro M_homog ⟨f, f_FG⟩ m
    let S := f.dom ⊔ closure L {m}
    have dom_le_S : f.dom ≤ S := le_sup_left
    let ⟨f', eq_f'⟩ := M_homog.extend_embedding (f.dom.fg_iff_structure_fg.1 f_FG)
      ((subtype _).comp f.toEquiv.toEmbedding) (inclusion dom_le_S) (h := ⟨subtype _⟩)
    refine ⟨⟨⟨S, f'.toHom.range, f'.equivRange⟩, f_FG.sup (fg_closure_singleton _)⟩,
      subset_closure.trans (le_sup_right : _ ≤ S) (mem_singleton m), ⟨dom_le_S, ?_⟩⟩
    ext
    simp only [Embedding.comp_apply, Equiv.coe_toEmbedding, coe_subtype, eq_f',
      Embedding.equivRange_apply, Substructure.coe_inclusion, EmbeddingLike.apply_eq_iff_eq]
  · intro h S S_FG f
    let ⟨g, ⟨dom_le_dom, eq⟩⟩ :=
      equiv_between_cg M_CG M_CG ⟨⟨S, f.toHom.range, f.equivRange⟩, S_FG⟩ h h
    use g
    simp only [Embedding.subtype_equivRange] at eq
    rw [← eq]
    ext
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8056b51ff7ff258459ee27596df5dcc0338ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
