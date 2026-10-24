# continuousAt_sign_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0becaac8-3657-8fc5-8e0c-3f217d15f5ac",
  "kind": "theorem",
  "lexical_name": "continuousAt_sign_of_pos",
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
  "slug": "continuousat-sign-of-pos--220c73a778e7b4ab7270308a",
  "source": {
    "blob": "f9be4eb835f622536134fd8e2573db607c8559a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Sign/Variant55415d6e6c3a6eb021f9e2996256ddc7f470763a4b039c159fb2e1d87660adc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:220c73a778e7b4ab7270308abe195c682c600ec39776b0f2d6f6151bee308071",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sign/Variant55415d6e6c3a6eb021f9e2996256ddc7f470763a4b039c159fb2e1d87660adc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0becaac8-3657-8fc5-8e0c-3f217d15f5ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_sign_of_pos {a : α} (h : 0 < a) : ContinuousAt SignType.sign a := by
  refine (continuousAt_const : ContinuousAt (fun _ => (1 : SignType)) a).congr ?_
  rw [Filter.EventuallyEq, eventually_nhds_iff]
  exact ⟨{ x | 0 < x }, fun x hx => (sign_pos hx).symm, isOpen_lt' 0, h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sign/Variant55415d6e6c3a6eb021f9e2996256ddc7f470763a4b039c159fb2e1d87660adc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sign/Variant55415d6e6c3a6eb021f9e2996256ddc7f470763a4b039c159fb2e1d87660adc7.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9be4eb835f622536134fd8e2573db607c8559a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
