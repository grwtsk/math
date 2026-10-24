# mangoldtInteraction_positive_probe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3a803d7a145814bcd7b89d18c1aa7878d42399a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:314b9f12-76a3-52f3-0369-a04250b77eb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5aa7a029-11f4-6b78-593c-c6c6d8bf4c4b",
  "kind": "theorem",
  "lexical_name": "mangoldtInteraction_positive_probe",
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
  "slug": "mangoldtinteraction-positive-probe--77f8b2df568935b1d9a9ec0a",
  "source": {
    "blob": "e3a803d7a145814bcd7b89d18c1aa7878d42399a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 315,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f8b2df568935b1d9a9ec0ad537e02d12426bbf86f672894f0982b356d6edbb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa7a029-11f4-6b78-593c-c6c6d8bf4c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtInteraction_positive_probe {A : ℝ} (hA : 1 ≤ A) :
    0 < (⟪interactionProbe 1, mangoldtInteraction A (interactionProbe 1)⟫_ℂ).re := by
  rw [mangoldtInteraction_probe_value hA, mul_one]
  exact mangoldtCoefficient_two_pos

/-- No generic nonnegative-quadratic certificate can be inferred for this arithmetic operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a803d7a145814bcd7b89d18c1aa7878d42399a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
