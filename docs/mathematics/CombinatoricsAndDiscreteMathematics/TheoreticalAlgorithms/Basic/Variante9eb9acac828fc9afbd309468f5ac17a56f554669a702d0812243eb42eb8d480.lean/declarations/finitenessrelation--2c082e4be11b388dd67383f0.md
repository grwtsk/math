# finitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f67ff7021ee441b2d99307e3fec8e4b455808d2fd0ddd4a6c99a86ddb867741a",
  "kind": "def",
  "lexical_name": "finitenessRelation",
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
  "slug": "finitenessrelation--2c082e4be11b388dd67383f0",
  "source": {
    "blob": "846cb5d8fd4ba718e27c5448831e2826238ad04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 460,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c082e4be11b388dd67383f00ecc103215ef1a32e47e5cc81f4417d1db7427f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f67ff7021ee441b2d99307e3fec8e4b455808d2fd0ddd4a6c99a86ddb867741a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def finitenessRelation (s : Slice) [BackwardPattern pat] [StrictBackwardPattern pat] :
    Std.Iterators.FinitenessRelation (DefaultBackwardSearcher pat s) Id where
  Rel := InvImage WellFoundedRelation.rel (fun it => it.internalState.currPos.down)
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    simp_wf
    obtain ⟨step, h, h'⟩ := h
    match step with
    | .yield it'' (.rejected p₁ p₂) =>
      obtain ⟨_, ⟨-, -, -, h'⟩⟩ := h'
      cases h
      simp [h']
    | .yield it'' (.matched p₁ p₂) =>
      obtain ⟨_, pos, ⟨h₀, -, -, h'⟩⟩ := h'
      cases h
      have := StrictBackwardPattern.ne_endPos _ _ h₀
      rw [h']
      exact Std.lt_of_lt_of_le (Slice.Pos.ofSliceTo_lt_ofSliceTo_iff.2 ((Slice.Pos.lt_endPos_iff _).2 this)) Slice.Pos.ofSliceTo_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846cb5d8fd4ba718e27c5448831e2826238ad04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
