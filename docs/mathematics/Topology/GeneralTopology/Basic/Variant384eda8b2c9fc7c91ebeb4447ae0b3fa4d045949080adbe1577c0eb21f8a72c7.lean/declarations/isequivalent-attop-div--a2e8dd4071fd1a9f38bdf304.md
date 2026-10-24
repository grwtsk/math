# isEquivalent_atTop_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05a6847518c9a5b414e4b715b8c551dd443090a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adf01356-fcfd-52de-029a-74712313faaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:184842ab-1f60-1c70-b1c9-e3a33f50352e",
  "kind": "theorem",
  "lexical_name": "isEquivalent_atTop_div",
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
  "slug": "isequivalent-attop-div--a2e8dd4071fd1a9f38bdf304",
  "source": {
    "blob": "05a6847518c9a5b414e4b715b8c551dd443090a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2e8dd4071fd1a9f38bdf304779f285baf91ab83991ada1740a54c809d5ee86f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:184842ab-1f60-1c70-b1c9-e3a33f50352e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEquivalent_atTop_div :
    (fun x => eval x P / eval x Q) ~[atTop] fun x =>
      P.leadingCoeff / Q.leadingCoeff * x ^ (P.natDegree - Q.natDegree : ℤ) := by
  by_cases hP : P = 0
  · simp [hP, IsEquivalent.refl]
  by_cases hQ : Q = 0
  · simp [hQ, IsEquivalent.refl]
  refine
    (P.isEquivalent_atTop_lead.symm.div Q.isEquivalent_atTop_lead.symm).symm.trans
      (EventuallyEq.isEquivalent ((eventually_gt_atTop 0).mono fun x hx => ?_))
  simp [← div_mul_div_comm, hP, hQ, zpow_sub₀ hx.ne.symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a6847518c9a5b414e4b715b8c551dd443090a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
