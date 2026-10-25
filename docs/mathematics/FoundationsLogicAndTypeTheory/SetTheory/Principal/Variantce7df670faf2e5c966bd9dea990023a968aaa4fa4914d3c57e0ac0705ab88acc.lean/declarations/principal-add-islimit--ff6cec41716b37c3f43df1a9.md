# principal_add_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ae21a39-667d-0932-57b2-5af32883807a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df3a4e28-1229-8461-9c15-c2b4b49e7bc6",
  "kind": "theorem",
  "lexical_name": "principal_add_isLimit",
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
  "slug": "principal-add-islimit--ff6cec41716b37c3f43df1a9",
  "source": {
    "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff6cec41716b37c3f43df1a952d456bd00154b1dac74bc3385680e2a130e7837",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3a4e28-1229-8461-9c15-c2b4b49e7bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem principal_add_isLimit {o : Ordinal} (ho₁ : 1 < o) (ho : Principal (· + ·) o) :
    o.IsLimit := by
  refine' ⟨fun ho₀ => _, fun a hao => _⟩
  · rw [ho₀] at ho₁
    exact not_lt_of_gt zero_lt_one ho₁
  · cases' eq_or_ne a 0 with ha ha
    · rw [ha, succ_zero]
      exact ho₁
    · refine' lt_of_le_of_lt _ (ho hao hao)
      rwa [← add_one_eq_succ, add_le_add_iff_left, one_le_iff_ne_zero]
#align ordinal.principal_add_is_limit Ordinal.principal_add_isLimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd3f85e02445d20039fcd47eecc281d59dceb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
