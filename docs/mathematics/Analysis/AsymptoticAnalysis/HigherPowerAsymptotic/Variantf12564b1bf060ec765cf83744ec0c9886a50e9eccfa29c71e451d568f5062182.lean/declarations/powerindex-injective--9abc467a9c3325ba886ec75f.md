# powerIndex_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3346b62aa44b5a04d969a9256509a3cef579c608",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f12564b1bf060ec765cf83744ec0c9886a50e9eccfa29c71e451d568f5062182.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8355d68c-b58f-8060-5a23-84426290559f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50309f93-f5a2-bffb-aa60-c7c26c807053",
  "kind": "theorem",
  "lexical_name": "powerIndex_injective",
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
  "slug": "powerindex-injective--9abc467a9c3325ba886ec75f",
  "source": {
    "blob": "3346b62aa44b5a04d969a9256509a3cef579c608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 418,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variantf12564b1bf060ec765cf83744ec0c9886a50e9eccfa29c71e451d568f5062182.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9abc467a9c3325ba886ec75f32f8b8ab6e24659f67e653215d9cbf63eefb6d2e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variantf12564b1bf060ec765cf83744ec0c9886a50e9eccfa29c71e451d568f5062182.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50309f93-f5a2-bffb-aa60-c7c26c807053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerIndex_injective : Function.Injective powerIndex := by
  intro q r h
  have he := prime_power_representation_unique q.1.val r.1.val q.2.val r.2.val
    q.1.property r.1.property (by have := q.2.property; omega)
    (by have := r.2.property; omega) h
  apply Prod.ext
  · exact Subtype.ext he.1
  · exact Subtype.ext he.2

/-- The finite cutoff preimage is finite by proved injectivity, without a sampled enumeration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variantf12564b1bf060ec765cf83744ec0c9886a50e9eccfa29c71e451d568f5062182.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variantf12564b1bf060ec765cf83744ec0c9886a50e9eccfa29c71e451d568f5062182.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3346b62aa44b5a04d969a9256509a3cef579c608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
