# skipSuffixWhile_eq_endPos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e302deb0-f80d-7178-ccf7-47452b1f1d37",
  "kind": "theorem",
  "lexical_name": "skipSuffixWhile_eq_endPos_iff",
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
  "slug": "skipsuffixwhile-eq-endpos-iff--e7308db3080dcaa4643556bf",
  "source": {
    "blob": "85ffb0536e67f0c736189beed25f8684280f3b45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1159,
    "line": 1154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7308db3080dcaa4643556bfc0d40394522d38cd7b9581c46fe97cc510e55f44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e302deb0-f80d-7178-ccf7-47452b1f1d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1154–1159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skipSuffixWhile_eq_endPos_iff {ρ : Type} {pat : ρ} [PatternModel pat] [StrictPatternModel pat]
    [BackwardPattern pat] [LawfulBackwardPatternModel pat] {s : String} :
    s.skipSuffixWhile pat = s.endPos ↔ s.endsWith pat = false := by
  simp [skipSuffixWhile_eq_skipSuffixWhile_toSlice, ← endsWith_toSlice, ← Pos.toSlice_inj,
    ← endPos_toSlice]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean#L1154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ffb0536e67f0c736189beed25f8684280f3b45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
