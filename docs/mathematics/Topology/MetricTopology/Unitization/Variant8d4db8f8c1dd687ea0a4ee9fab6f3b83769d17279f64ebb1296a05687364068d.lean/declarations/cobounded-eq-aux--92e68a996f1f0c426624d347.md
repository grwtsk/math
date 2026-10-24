# cobounded_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8d5f16c-547c-70a7-3391-90c3826ede17",
  "kind": "theorem",
  "lexical_name": "cobounded_eq_aux",
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
  "slug": "cobounded-eq-aux--92e68a996f1f0c426624d347",
  "source": {
    "blob": "0cfe02a686b402dfd4337b57e152d31ed0155b4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 200,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e68a996f1f0c426624d347656f013b265c786397fa40819203f127502e7b88",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8d5f16c-547c-70a7-3391-90c3826ede17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cobounded_eq_aux :
    @cobounded _ (Bornology.induced <| addEquiv 𝕜 A) = cobounded (Unitization 𝕜 A) :=
  le_antisymm lipschitzWith_addEquiv.comap_cobounded_le
    antilipschitzWith_addEquiv.tendsto_cobounded.le_comap

end Aux

/-- The uniformity on `Unitization 𝕜 A` is inherited from `𝕜 × A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cfe02a686b402dfd4337b57e152d31ed0155b4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
