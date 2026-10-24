# edge_wrong_tag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43c34a3c-afa2-c855-81f5-5054514824ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fe43da3-5b3c-6c10-7a31-e68a853f50f6",
  "kind": "theorem",
  "lexical_name": "edge_wrong_tag",
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
  "slug": "edge-wrong-tag--79d361f5f41bcf2e5cc7f2ba",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28157,
    "line": 28130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79d361f5f41bcf2e5cc7f2ba3f854603dc3921ebfebb7098917107f9ac7ef0db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fe43da3-5b3c-6c10-7a31-e68a853f50f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28130–28157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_wrong_tag (t : Bool) (u : Fin 3) (htu : u ≠ (if t then 2 else 1)) {y x : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data) :
    Proves P Γ γ (L.neg (B.edge L.code KY.code KP.code t y (B.observation.tagged L.code u x))) := by
  have ht := H.observation.tagged_typed u hx mx
  apply L.imp_intro_future (H.edge_formula KY KP t hy my ht.1 ht.2) L.bottom_formula
  intro Δ δ e he
  simp only [edge_rename,ObservationCode.tagged_rename] at he
  rw [LogicSetup.bottom_rename]
  have hy' := y_typed_rename (B := B) e hy
  have hx' := x_typed_rename (B := B) e hx
  have ht' := (H.rename e).observation.tagged_typed u hx' (e.moded mx)
  apply (H.rename e).edge_witness_elim (KY.rename e) (KP.rename e) t hy' (e.moded my) ht'.1 ht'.2 (L.rename e).bottom_formula he
  intro Θ θ f a ha ma hp
  rw [LogicSetup.bottom_rename]
  simp only [ObservationCode.tagged_rename] at hp
  have ht0 := ((H.rename e).rename f).observation.tagged_typed 0 ha ma
  have hta := ((H.rename e).rename f).observation.tagged_typed (if t then 2 else 1) ha ma
  have hx'' := x_typed_rename (B := B.rename e.names) f hx'
  have htx := ((H.rename e).rename f).observation.tagged_typed u hx'' (f.moded (e.moded mx))
  have fy := ((H.rename e).rename f).relation_formula ((KY.rename e).rename f) ((KP.rename e).rename f)
    (y_typed_rename (B := B.rename e.names) f hy') (f.moded (e.moded my)) ht0.1 ht0.2
  have fx := ((H.rename e).rename f).relation_formula ((KY.rename e).rename f) ((KP.rename e).rename f) htx.1 htx.2 hta.1 hta.2
  have hrel := ((L.rename e).rename f).conj_right fy fx hp
  have hn := ((H.rename e).rename f).relation_tagged_distinct ((KY.rename e).rename f) ((KP.rename e).rename f)
    u (if t then 2 else 1) htu hx'' (f.moded (e.moded mx)) ha ma
  exact ((L.rename e).rename f).imp_elim fx ((L.rename e).rename f).bottom_formula hn hrel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L28130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
