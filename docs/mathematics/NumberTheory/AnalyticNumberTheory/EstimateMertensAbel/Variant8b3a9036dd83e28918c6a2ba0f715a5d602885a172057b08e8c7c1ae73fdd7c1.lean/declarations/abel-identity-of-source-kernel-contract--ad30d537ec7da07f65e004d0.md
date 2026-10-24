# abel_identity_of_source_kernel_contract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e5478b884c6c54c4fa9fe555b47d28ba95530aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:030f0d95-0cf6-7c1c-7038-d02c4e3f620a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a20911f-adb5-f9ba-fa0c-eb833e6166ea",
  "kind": "theorem",
  "lexical_name": "abel_identity_of_source_kernel_contract",
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
  "slug": "abel-identity-of-source-kernel-contract--ad30d537ec7da07f65e004d0",
  "source": {
    "blob": "8e5478b884c6c54c4fa9fe555b47d28ba95530aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 198,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad30d537ec7da07f65e004d0ecd6176a56f4ed2fc1a567c19f737092567ca14c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a20911f-adb5-f9ba-fa0c-eb833e6166ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abel_identity_of_source_kernel_contract
    (A : ℝ) (hA : 1 ≤ A)
    (Phi : ℝ → ℝ)
    (hPhi : SourceMobiusKernelContract A Phi) :
    (∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
      realMoebius d * Phi d) =
      mertensKernelIntegral A Phi -
        mertens (sourceLower A) * Phi (sourceLower A) := by
  exact source_window_abel_of_upper_zero
    A hA Phi hPhi.2.1 hPhi.2.2.1 hPhi.2.2.2

/-- Current Abel checkpoint: the closed-right endpoint algebra is complete;
the next source-specific task is exactly the real-kernel contract above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5478b884c6c54c4fa9fe555b47d28ba95530aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
