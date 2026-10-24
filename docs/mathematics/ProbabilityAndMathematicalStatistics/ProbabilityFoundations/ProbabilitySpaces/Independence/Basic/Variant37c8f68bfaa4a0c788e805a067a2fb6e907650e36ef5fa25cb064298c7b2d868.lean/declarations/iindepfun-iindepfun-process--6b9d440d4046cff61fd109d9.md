# iIndepFun.iIndepFun_process

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69c79156f03cca42fd6d7e632cfcb4375a91422e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04486bbd-0bed-abe8-f48e-db070366c516",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fe80140-d14a-f94d-39a8-289d50447650",
  "kind": "lemma",
  "lexical_name": "iIndepFun.iIndepFun_process",
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
  "slug": "iindepfun-iindepfun-process--6b9d440d4046cff61fd109d9",
  "source": {
    "blob": "69c79156f03cca42fd6d7e632cfcb4375a91422e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 409,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b9d440d4046cff61fd109d9d769b28fa895723ab0c14de9028e2bdb2e150877",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fe80140-d14a-f94d-39a8-289d50447650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun.iIndepFun_process {T : S → Type*} {𝓧 : (i : S) → (j : T i) → Type*}
    [∀ i j, MeasurableSpace (𝓧 i j)] {X : (i : S) → (j : T i) → Ω → 𝓧 i j}
    (hX : ∀ i j, Measurable (X i j))
    (h : ∀ (I : Finset S) (J : (i : I) → Finset (T i)), iIndepFun (fun i ω (j : J i) ↦ X i j ω) P) :
    iIndepFun (fun i ω j ↦ X i j ω) P :=
  Kernel.iIndepFun.iIndepFun_process hX h

/-- Stochastic processes $((X^s_t)_{t \in T_s})_{s \in S}$ are mutually independent if
for all $s_1, ..., s_n$ and all $t^{s_i}_1, ..., t^{s_i}_{p_i}$ the families
$(X^{s_1}_{t^{s_1}_1}, ..., X^{s_1}_{t^{s_1}_{p_1}}), ...,
(X^{s_n}_{t^{s_n}_1}, ..., X^{s_n}_{t^{s_n}_{p_n}})$ are mutually independent.

This version only requires a.e.-measurability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c79156f03cca42fd6d7e632cfcb4375a91422e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
