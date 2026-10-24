# IntegrableOn.continuousOn_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f6d86266c6884982e01a2a77968b30dfd0b838b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 522,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bb4a165-bc0d-3fcb-4b88-84b066ff8c2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac568d67-0757-24c5-c644-48e3ccdfefd1",
  "kind": "theorem",
  "lexical_name": "IntegrableOn.continuousOn_mul",
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
  "slug": "integrableon-continuouson-mul--86acb2f801547452a8fcc9b9",
  "source": {
    "blob": "0f6d86266c6884982e01a2a77968b30dfd0b838b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 522,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86acb2f801547452a8fcc9b9d633c86b828f071b92bd209694e7ca3b498d7028",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac568d67-0757-24c5-c644-48e3ccdfefd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntegrableOn.continuousOn_mul [T2Space X] (hg : ContinuousOn g K)
    (hg' : IntegrableOn g' K μ) (hK : IsCompact K) : IntegrableOn (fun x => g x * g' x) K μ :=
  hg'.continuousOn_mul_of_subset hg hK hK.measurableSet Subset.rfl
#align measure_theory.integrable_on.continuous_on_mul MeasureTheory.IntegrableOn.continuousOn_mul

end Mul

section Smul

variable {𝕜 : Type*} [NormedField 𝕜] [NormedSpace 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f6d86266c6884982e01a2a77968b30dfd0b838b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
