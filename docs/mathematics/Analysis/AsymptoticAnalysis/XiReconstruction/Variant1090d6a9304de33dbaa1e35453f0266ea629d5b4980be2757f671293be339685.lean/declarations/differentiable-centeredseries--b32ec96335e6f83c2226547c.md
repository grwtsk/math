# differentiable_centeredSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d0fa080c63539be288fcb2a546355e5bd7203b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4409398-a4fd-6dc1-5100-84a31eb158e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd07f28a-b974-3ce9-3c0e-c5a955a38223",
  "kind": "theorem",
  "lexical_name": "differentiable_centeredSeries",
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
  "slug": "differentiable-centeredseries--b32ec96335e6f83c2226547c",
  "source": {
    "blob": "0d0fa080c63539be288fcb2a546355e5bd7203b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b32ec96335e6f83c2226547c1f94f431febc9f89e9f6b97ec660f0e1f91219b2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd07f28a-b974-3ce9-3c0e-c5a955a38223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable_centeredSeries : Differentiable ℂ centeredSeries := by
  let p := FormalMultilinearSeries.ofScalars ℂ (fun n => (coefficient n : ℂ))
  have heq : p.sum = centeredSeries := by
    funext w
    exact FormalMultilinearSeries.ofScalars_sum_eq _ w
  have ha := (FormalMultilinearSeries.analyticOnNhd (p := p))
  rw [show p.radius = ⊤ from centeredSeries_radius, Metric.eball_top, heq] at ha
  exact differentiableOn_univ.mp ha.differentiableOn

/-- Unconditional proof of the unchanged, previously open Taylor-descent target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0fa080c63539be288fcb2a546355e5bd7203b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
