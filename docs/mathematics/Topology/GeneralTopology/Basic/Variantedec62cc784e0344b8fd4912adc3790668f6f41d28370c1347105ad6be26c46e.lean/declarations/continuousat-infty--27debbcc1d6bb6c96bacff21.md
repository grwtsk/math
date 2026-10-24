# continuousAt_infty'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:427db340-d683-77b5-4277-3b10a90cdbaf",
  "kind": "theorem",
  "lexical_name": "continuousAt_infty'",
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
  "slug": "continuousat-infty--27debbcc1d6bb6c96bacff21",
  "source": {
    "blob": "3b06bda08122ae49503febfe80755ec5b014be69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 363,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27debbcc1d6bb6c96bacff2159c6221cd9cecda8e77ef9abfcf08cd2a8affc3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:427db340-d683-77b5-4277-3b10a90cdbaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_infty' {Y : Type*} [TopologicalSpace Y] {f : OnePoint X → Y} :
    ContinuousAt f ∞ ↔ Tendsto (f ∘ (↑)) (coclosedCompact X) (𝓝 (f ∞)) :=
  tendsto_nhds_infty'.trans <| and_iff_right (tendsto_pure_nhds _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06bda08122ae49503febfe80755ec5b014be69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
