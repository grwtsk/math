# eventuallyEqSet_iff_inf_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4044ed5-2839-eab7-f0aa-84d82c8667f4",
  "kind": "theorem",
  "lexical_name": "eventuallyEqSet_iff_inf_principal",
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
  "slug": "eventuallyeqset-iff-inf-principal--530e8faa774e1f7cd53bc19e",
  "source": {
    "blob": "7084d07ff0cc5bcd9188744def52f8656690516c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1347,
    "line": 1340,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530e8faa774e1f7cd53bc19e0cd62118e6b73a95355cdbea5bd4ff6ccbff7358",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4044ed5-2839-eab7-f0aa-84d82c8667f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1340–1347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventuallyEqSet_iff_inf_principal {s t : Set α} {l : Filter α} :
    s =ᶠ[l] t ↔ l ⊓ 𝓟 s = l ⊓ 𝓟 t := by
  simp only [eventuallySubset_antisymm_iff, le_antisymm_iff, eventuallySubset_iff_inf_principal_le]

@[deprecated (since := "2026-08-14")]
alias set_eventuallyEq_iff_inf_principal := eventuallyEqSet_iff_inf_principal

@[to_dual (attr := gcongr)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean#L1340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7084d07ff0cc5bcd9188744def52f8656690516c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
