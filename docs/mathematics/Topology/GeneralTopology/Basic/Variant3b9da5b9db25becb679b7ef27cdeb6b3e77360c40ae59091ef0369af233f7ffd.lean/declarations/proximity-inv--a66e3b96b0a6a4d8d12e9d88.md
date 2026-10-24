# proximity_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7381a222-9e78-62f3-83e2-b31213664fd2",
  "kind": "theorem",
  "lexical_name": "proximity_inv",
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
  "slug": "proximity-inv--a66e3b96b0a6a4d8d12e9d88",
  "source": {
    "blob": "ac20becf070f5999e74454bfc92839a50486d438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a66e3b96b0a6a4d8d12e9d88ff176165dc490b3ba3210459df938333ad94e8e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7381a222-9e78-62f3-83e2-b31213664fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proximity_inv {f : ℂ → ℂ} : proximity f⁻¹ ⊤ = proximity f 0 := by
  simp [proximity_zero, proximity_top]

/--
For complex-valued `f`, the difference between `proximity f ⊤` and `proximity f⁻¹ ⊤` is the circle
average of `log ‖f ·‖`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac20becf070f5999e74454bfc92839a50486d438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
