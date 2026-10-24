# monoCLM_eq_of_scalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeb2cff4a55ef56e4692140053af214e1f5dcabe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 495,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/716e1a4ec3a7c1aff3a9a4d7e49302efa5ec3ff4447d2e07047b764eddf2c7fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9dac4df-9a3e-4093-2f71-3b7bd3e8b510",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93d66064-6e24-23ec-4c0f-84192a8088b0",
  "kind": "lemma",
  "lexical_name": "monoCLM_eq_of_scalars",
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
  "slug": "monoclm-eq-of-scalars--5bf2154c02511900bdbe2e5e",
  "source": {
    "blob": "aeb2cff4a55ef56e4692140053af214e1f5dcabe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 495,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestFunction/Variant716e1a4ec3a7c1aff3a9a4d7e49302efa5ec3ff4447d2e07047b764eddf2c7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bf2154c02511900bdbe2e5ee2c45c780e07218bac2c9e345bb56f6ac08248a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestFunction/Variant716e1a4ec3a7c1aff3a9a4d7e49302efa5ec3ff4447d2e07047b764eddf2c7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93d66064-6e24-23ec-4c0f-84192a8088b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monoCLM_eq_of_scalars (𝕜' : Type*)
    [NontriviallyNormedField 𝕜'] [NormedSpace 𝕜' F] [Algebra ℝ 𝕜'] [IsScalarTower ℝ 𝕜' F] :
    (monoCLM 𝕜 : 𝓓^{n₁}(Ω₁, F) → 𝓓^{n₂}(Ω₂, F)) = monoCLM 𝕜' :=
  rfl

end Monotone

section FDerivCLM

variable [Algebra ℝ 𝕜] [IsScalarTower ℝ 𝕜 F]

variable (𝕜 n k) in
/-- `fderivCLM 𝕜 n k` is the continuous `𝕜`-linear-map sending `f : 𝓓^{n}_{K}(E, F)` to
its derivative as an element of `𝓓^{k}_{K}(E, E →L[ℝ] F)`.
This only makes mathematical sense if `k + 1 ≤ n`, otherwise we define it as the zero map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestFunction/Variant716e1a4ec3a7c1aff3a9a4d7e49302efa5ec3ff4447d2e07047b764eddf2c7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestFunction/Variant716e1a4ec3a7c1aff3a9a4d7e49302efa5ec3ff4447d2e07047b764eddf2c7fd.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb2cff4a55ef56e4692140053af214e1f5dcabe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
