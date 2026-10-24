# comp₂Measurable_eq_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b837ae25aa9b822f2c23f220ac47d2cf3a90e195",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/209ef9a5ca610d1dc7c6302d9afcd2873b93664c17579f102278356cb0b11c4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:396bfc0f-4b3c-2fe6-3589-94ef5068b364",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbb400dc-2017-8fb7-8e7d-c9916eec50f4",
  "kind": "theorem",
  "lexical_name": "comp₂Measurable_eq_mk",
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
  "slug": "comp-measurable-eq-mk--dc2f44ef1f97442e193a196a",
  "source": {
    "blob": "b837ae25aa9b822f2c23f220ac47d2cf3a90e195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 399,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant209ef9a5ca610d1dc7c6302d9afcd2873b93664c17579f102278356cb0b11c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc2f44ef1f97442e193a196a2aadb10ca7350bb72ca5ca4ea65b6a95eb7482d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant209ef9a5ca610d1dc7c6302d9afcd2873b93664c17579f102278356cb0b11c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbb400dc-2017-8fb7-8e7d-c9916eec50f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp₂Measurable_eq_mk (g : β → γ → δ) (hg : Measurable (uncurry g)) (f₁ : α →ₘ[μ] β)
    (f₂ : α →ₘ[μ] γ) :
    comp₂Measurable g hg f₁ f₂ =
      mk (fun a => g (f₁ a) (f₂ a))
        (hg.comp_aemeasurable (f₁.aemeasurable.prodMk f₂.aemeasurable)).aestronglyMeasurable := by
  rw [comp₂Measurable_eq_pair, pair_eq_mk, compMeasurable_mk]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant209ef9a5ca610d1dc7c6302d9afcd2873b93664c17579f102278356cb0b11c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant209ef9a5ca610d1dc7c6302d9afcd2873b93664c17579f102278356cb0b11c4c.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b837ae25aa9b822f2c23f220ac47d2cf3a90e195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
