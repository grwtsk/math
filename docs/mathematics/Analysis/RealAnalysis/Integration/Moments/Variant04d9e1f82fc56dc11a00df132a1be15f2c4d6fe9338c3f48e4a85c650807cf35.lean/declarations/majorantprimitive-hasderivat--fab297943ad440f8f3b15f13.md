# majorantPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a92ed0f36cab22f4a2b267676994a4109b8c7336",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed88faf6-6263-5999-803e-6d9b60694614",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdbc393f-907d-cfae-d339-d4faf49ddde3",
  "kind": "theorem",
  "lexical_name": "majorantPrimitive_hasDerivAt",
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
  "slug": "majorantprimitive-hasderivat--fab297943ad440f8f3b15f13",
  "source": {
    "blob": "a92ed0f36cab22f4a2b267676994a4109b8c7336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab297943ad440f8f3b15f1336eead3dc1f1a3d961b0cb80e88c7b74f9d534db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdbc393f-907d-cfae-d339-d4faf49ddde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem majorantPrimitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt majorantPrimitive (cellMajorant x) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := (((Real.hasDerivAt_log hx.ne').add_const 2).const_mul (-2)).div
    (Real.hasDerivAt_sqrt hx.ne') hs
  convert hd using 1 <;> first
  | rfl
  | (dsimp [cellMajorant]; field_simp [hx.ne', hs];
      simp only [Real.sq_sqrt hx.le]; ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a92ed0f36cab22f4a2b267676994a4109b8c7336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
