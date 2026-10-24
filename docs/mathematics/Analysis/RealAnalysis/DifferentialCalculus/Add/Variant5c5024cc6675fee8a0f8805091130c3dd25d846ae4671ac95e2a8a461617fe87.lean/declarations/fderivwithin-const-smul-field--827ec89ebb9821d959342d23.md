# fderivWithin_const_smul_field'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99f2c6461a9d095cfde92b3a93aa450da1f128e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9753bfe7-9fb9-337f-0a53-121ae9b62d85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34f3d977-a5f6-d9bf-7f52-14e3d96974ac",
  "kind": "lemma",
  "lexical_name": "fderivWithin_const_smul_field'",
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
  "slug": "fderivwithin-const-smul-field--827ec89ebb9821d959342d23",
  "source": {
    "blob": "99f2c6461a9d095cfde92b3a93aa450da1f128e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:827ec89ebb9821d959342d23a486eb9b73052bdd64956ac6bf815d5ffed9f9b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34f3d977-a5f6-d9bf-7f52-14e3d96974ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fderivWithin_const_smul_field' {s : Set 𝕜} {f : 𝕜 → F} {x : 𝕜} (c : R) :
    fderivWithin 𝕜 (c • f) s x = c • fderivWithin 𝕜 f s x := by
  by_cases hsx : UniqueDiffWithinAt 𝕜 s x
  · exact fderivWithin_const_smul_field c hsx
  · simp [fderivWithin_zero_of_not_uniqueDiffWithinAt hsx]

omit [DivisionSemiring R] [Module R F] [SMulCommClass 𝕜 R F] [ContinuousConstSMul R F] in
/-- Special case of `fderivWithin_neg` for functions `𝕜 → F`, i.e. when the domain `E` is the scalar
field `𝕜` itself. In this case no `UniqueDiffWithinAt 𝕜 s x` hypothesis is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99f2c6461a9d095cfde92b3a93aa450da1f128e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
