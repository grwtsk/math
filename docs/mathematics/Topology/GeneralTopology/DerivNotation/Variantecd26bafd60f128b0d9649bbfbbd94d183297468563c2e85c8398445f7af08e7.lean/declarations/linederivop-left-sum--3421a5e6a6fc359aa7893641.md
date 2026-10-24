# lineDerivOp_left_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47997c07a835dac88abf2ab348a48c82cf869a9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2268868b-7e06-35ac-ae07-41e31ec17c95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c587caf-f465-f693-f513-11de25c15e35",
  "kind": "theorem",
  "lexical_name": "lineDerivOp_left_sum",
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
  "slug": "linederivop-left-sum--3421a5e6a6fc359aa7893641",
  "source": {
    "blob": "47997c07a835dac88abf2ab348a48c82cf869a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3421a5e6a6fc359aa78936417d0c660e795a41498df341fca6e430c5c2535660",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c587caf-f465-f693-f513-11de25c15e35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineDerivOp_left_sum (f : ι → V) (x : E) (s : Finset ι) :
    ∂_{∑ i ∈ s, f i} x = ∑ i ∈ s, ∂_{f i} x :=
  map_sum (AddMonoidHom.mk' (∂_{·} x) (lineDerivOp_left_add · · x)) f s

end lineDerivOp

section lineDerivOpCLM

variable [Ring R] [AddCommGroup E] [Module R E] [AddCommGroup F] [Module R F]
  [TopologicalSpace E] [TopologicalSpace F] [AddCommGroup V]
  [LineDeriv V E F] [LineDerivAdd V E F] [LineDerivSMul R V E F] [ContinuousLineDeriv V E F]

variable (R E) in
/-- The line derivative as a continuous linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47997c07a835dac88abf2ab348a48c82cf869a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
