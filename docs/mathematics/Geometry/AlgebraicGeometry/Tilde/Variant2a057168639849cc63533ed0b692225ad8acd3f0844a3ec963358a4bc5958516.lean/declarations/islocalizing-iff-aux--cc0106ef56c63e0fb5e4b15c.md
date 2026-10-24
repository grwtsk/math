# isLocalizing_iff_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9af7347-639e-2431-4ddc-a2c6f69c2626",
  "kind": "lemma",
  "lexical_name": "isLocalizing_iff_aux",
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
  "slug": "islocalizing-iff-aux--cc0106ef56c63e0fb5e4b15c",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 786,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc0106ef56c63e0fb5e4b15c28213601a49225d561c3ee2662070bf22db299a2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9af7347-639e-2431-4ddc-a2c6f69c2626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 786–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isLocalizing_iff_aux (M : (Spec R).Modules) :
    IsLocalizing (modulesSpecToSheaf.obj M) ↔ Aux M ⊤ := by
  let φ (f : R) := ((modulesSpecToSheaf.obj M).obj.map (basicOpen f).leTop.op).hom
  refine ⟨fun h ↦ ?_, fun h f ↦ IsLocalizedModule.Away.mk_of_addCommGroup ?_ ?_ ?_⟩
  · have hf (f : R) : IsLocalizedModule.Away f (φ f) := h f
    refine ⟨fun f hle s ↦ ?_, fun f hle s hs ↦ ?_⟩
    · obtain ⟨n, y, hy⟩ := (hf f).surj _ _ s
      use n, y, hy.symm
    · obtain ⟨⟨_, n, rfl⟩, hn⟩ := (IsLocalizedModule.eq_zero_iff (.powers f) (φ f)).mp hs
      use n, hn
  · exact Scheme.Modules.isUnit_algebraMap_end_of_le_basicOpen f le_rfl
  · intro x
    obtain ⟨n, t, ht⟩ := h.existence _ _ x
    use n, t, ht.symm
  · intro x hx
    obtain ⟨n, hn⟩ := h.uniqueness _ _ _ hx
    use n, hn

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
