# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:839d3d32804066cb92ed8778459b12a2ae93c1c4e79b5149700e36c0fa940eb4",
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
  "slug": "instance--316f6c8a022b53abb32a7e71",
  "source": {
    "blob": "846cb5d8fd4ba718e27c5448831e2826238ad04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:316f6c8a022b53abb32a7e712b6de029c8e63570e488d5c3dc46faa91b9b298a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:839d3d32804066cb92ed8778459b12a2ae93c1c4e79b5149700e36c0fa940eb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (s : Slice) [ForwardPattern pat] :
    Std.Iterator (DefaultForwardSearcher pat s) Id (SearchStep s) where
  IsPlausibleStep it
    | .yield it' (.rejected p₁ p₂) => ∃ (h : it.internalState.currPos ≠ s.endPos),
      ForwardPattern.skipPrefixOfNonempty? pat (s.sliceFrom it.internalState.currPos) (by simpa) = none ∧
      p₁ = it.internalState.currPos ∧ p₂ = it.internalState.currPos.next h ∧
      it'.internalState.currPos = it.internalState.currPos.next h
    | .yield it' (.matched p₁ p₂) => ∃ (h : it.internalState.currPos ≠ s.endPos), ∃ pos,
      ForwardPattern.skipPrefixOfNonempty? pat (s.sliceFrom it.internalState.currPos) (by simpa) = some pos ∧
      p₁ = it.internalState.currPos ∧ p₂ = Slice.Pos.ofSliceFrom pos ∧
      it'.internalState.currPos = Slice.Pos.ofSliceFrom pos
    | .done => it.internalState.currPos = s.endPos
    | .skip _ => False
  step it :=
    if h : it.internalState.currPos = s.endPos then
      pure (.deflate ⟨.done, by simp [h]⟩)
    else
      match h' : ForwardPattern.skipPrefixOfNonempty? pat (s.sliceFrom it.internalState.currPos) (by simpa) with
      | some pos =>
        pure (.deflate ⟨.yield ⟨⟨Slice.Pos.ofSliceFrom pos⟩⟩
          (.matched it.internalState.currPos (Slice.Pos.ofSliceFrom pos)), by simp [h, h']⟩)
      | none =>
        pure (.deflate ⟨.yield ⟨⟨it.internalState.currPos.next h⟩⟩
          (.rejected it.internalState.currPos (it.internalState.currPos.next h)), by simp [h, h']⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846cb5d8fd4ba718e27c5448831e2826238ad04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
