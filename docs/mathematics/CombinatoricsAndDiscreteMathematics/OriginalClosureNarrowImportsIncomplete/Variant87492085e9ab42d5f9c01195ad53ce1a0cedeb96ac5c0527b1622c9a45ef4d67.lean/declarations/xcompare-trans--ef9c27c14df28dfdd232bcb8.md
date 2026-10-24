# xCompare_trans

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
      "line": 22709,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:954d4f44-3ac4-f8fc-9396-ecac1b8ca9ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27e9055d-7795-d1ce-8798-1e23bef6c7ca",
  "kind": "theorem",
  "lexical_name": "xCompare_trans",
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
  "slug": "xcompare-trans--ef9c27c14df28dfdd232bcb8",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22731,
    "line": 22709,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef9c27c14df28dfdd232bcb8189e44625b3fb831a95637678b842cbbc9737fb6",
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

Occurrence: `result:27e9055d-7795-d1ce-8798-1e23bef6c7ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22709–22731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xCompare_trans {x y z : Expr S}
    (hx : HasType P Γ x (R.channel.logicalType R.probe.carrier)) (mx : WellModed γ x .data)
    (hy : HasType P Γ y (R.channel.logicalType R.probe.carrier)) (my : WellModed γ y .data)
    (hz : HasType P Γ z (R.channel.logicalType R.probe.carrier)) (mz : WellModed γ z .data)
    (he : Proves P Γ γ (R.xCompare L.code KY.code KP.code x y))
    (hf : Proves P Γ γ (R.xCompare L.code KY.code KP.code y z)) :
    Proves P Γ γ (R.xCompare L.code KY.code KP.code x z) := by
  apply H.xCompare_intro KY KP hx mx hz mz
  intro Δ δ e i hi mi
  have he' : Proves P Δ δ ((R.rename e.names).xCompare (L.rename e).code
      (KY.rename e).code (KP.rename e).code (x.rename e.names) (y.rename e.names)) := by
    simpa only [xCompare_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using he.rename e
  have hf' : Proves P Δ δ ((R.rename e.names).xCompare (L.rename e).code
      (KY.rename e).code (KP.rename e).code (y.rename e.names) (z.rename e.names)) := by
    simpa only [xCompare_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using hf.rename e
  have hxy := (H.rename e).xCompare_elim (KY.rename e) (KP.rename e)
    (x_typed_rename (R := R) e hx) (e.moded mx) (x_typed_rename (R := R) e hy) (e.moded my) hi mi he'
  have hyz := (H.rename e).xCompare_elim (KY.rename e) (KP.rename e)
    (x_typed_rename (R := R) e hy) (e.moded my) (x_typed_rename (R := R) e hz) (e.moded mz) hi mi hf'
  exact ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi mi (x_typed_rename (R := R) e hx) (e.moded mx)).equivalent_trans
    ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi mi (x_typed_rename (R := R) e hy) (e.moded my))
    ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi mi (x_typed_rename (R := R) e hz) (e.moded mz)) hxy hyz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L22709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
