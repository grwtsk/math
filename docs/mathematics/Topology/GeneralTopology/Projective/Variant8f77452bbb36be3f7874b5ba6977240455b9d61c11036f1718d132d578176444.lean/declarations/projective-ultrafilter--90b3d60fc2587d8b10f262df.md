# projective_ultrafilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2afddff390aa1cccad2ea8d78e92a085d8b98af0b15df59744b8e986cd05f2ca",
  "kind": "instance",
  "lexical_name": "projective_ultrafilter",
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
  "slug": "projective-ultrafilter--90b3d60fc2587d8b10f262df",
  "source": {
    "blob": "0b77652c50502b3e6d4f4428f1b68071ba9a8576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/Projective/Variant8f77452bbb36be3f7874b5ba6977240455b9d61c11036f1718d132d578176444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90b3d60fc2587d8b10f262df263ee4ef7255b71f57f05776ebdbe1b3ee848b20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Projective/Variant8f77452bbb36be3f7874b5ba6977240455b9d61c11036f1718d132d578176444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2afddff390aa1cccad2ea8d78e92a085d8b98af0b15df59744b8e986cd05f2ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance projective_ultrafilter (X : Type u) : Projective (of <| Ultrafilter X) where
  factors {Y Z} f g hg := by
    rw [epi_iff_surjective] at hg
    obtain ⟨g', hg'⟩ := hg.hasRightInverse
    let t : X → Y := g' ∘ f ∘ (pure : X → Ultrafilter X)
    let h : Ultrafilter X → Y := Ultrafilter.extend t
    have hh : Continuous h := continuous_ultrafilter_extend _
    use CompHausLike.ofHom _ ⟨h, hh⟩
    apply ConcreteCategory.coe_ext
    simp only [h, ContinuousMap.coe_mk, coe_comp]
    convert denseRange_pure.equalizer (g.hom.continuous.comp hh) f.hom.continuous _
    have : g.hom ∘ g' = id := hg'.comp_eq_id
    rw [comp_assoc, ultrafilter_extend_extends, ← comp_assoc, this, id_comp]
    rfl

/-- For any profinite `X`, the natural map `Ultrafilter X → X` is a projective presentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Projective/Variant8f77452bbb36be3f7874b5ba6977240455b9d61c11036f1718d132d578176444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Projective/Variant8f77452bbb36be3f7874b5ba6977240455b9d61c11036f1718d132d578176444.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b77652c50502b3e6d4f4428f1b68071ba9a8576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
