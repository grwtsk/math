# continuousOn_iff_lower_upperSemicontinuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8a1938f867d22ceac0c4eee6a95b759f91b45b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bae8a01e-1997-ae42-c307-cdfe5c2a4337",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:942da58a-814b-5936-7c67-1c72a566586a",
  "kind": "theorem",
  "lexical_name": "continuousOn_iff_lower_upperSemicontinuousOn",
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
  "slug": "continuouson-iff-lower-uppersemicontinuouson--d8c67a47605db4c1f6baa84d",
  "source": {
    "blob": "f8a1938f867d22ceac0c4eee6a95b759f91b45b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1108,
    "line": 1103,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8c67a47605db4c1f6baa84d29a98685ec033312e846d53a324f3ac158587b88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:942da58a-814b-5936-7c67-1c72a566586a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1103–1108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_iff_lower_upperSemicontinuousOn {f : α → γ} :
    ContinuousOn f s ↔ LowerSemicontinuousOn f s ∧ UpperSemicontinuousOn f s := by
  simp only [ContinuousOn, continuousWithinAt_iff_lower_upperSemicontinuousWithinAt]
  exact
    ⟨fun H => ⟨fun x hx => (H x hx).1, fun x hx => (H x hx).2⟩, fun H x hx => ⟨H.1 x hx, H.2 x hx⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean#L1103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a1938f867d22ceac0c4eee6a95b759f91b45b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
