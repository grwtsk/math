# kernelVector_denseSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0779e292-2b04-77c6-45b7-12de2c204f6d",
  "kind": "theorem",
  "lexical_name": "kernelVector_denseSpan",
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
  "slug": "kernelvector-densespan--ea342763891acfce3e943f3b",
  "source": {
    "blob": "262fca1668fdc7ca906bccb244f1ac2c84d8938e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Variante571122075e8d0c149ceb506b9d11843ed2451dd17c8f0ba2cfe8c8fb77c40cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea342763891acfce3e943f3ba367cba94d003de005212f1ee54dc495ab6cd4d0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Variante571122075e8d0c149ceb506b9d11843ed2451dd17c8f0ba2cfe8c8fb77c40cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0779e292-2b04-77c6-45b7-12de2c204f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelVector_denseSpan :
    (kernelSpan kernel).topologicalClosure = ⊤ := by
  apply Submodule.dense_iff_topologicalClosure_eq_top.mp
  apply (completePreKernel_denseRange kernel).mono
  rintro point ⟨prePoint, rfl⟩
  obtain ⟨rawPoint, rfl⟩ :=
    Submodule.Quotient.mk_surjective
      (kernelNullSubmodule kernel) prePoint
  exact rawToKernelSpace_mem_span kernel rawPoint


end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Variante571122075e8d0c149ceb506b9d11843ed2451dd17c8f0ba2cfe8c8fb77c40cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Variante571122075e8d0c149ceb506b9d11843ed2451dd17c8f0ba2cfe8c8fb77c40cd.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `262fca1668fdc7ca906bccb244f1ac2c84d8938e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
