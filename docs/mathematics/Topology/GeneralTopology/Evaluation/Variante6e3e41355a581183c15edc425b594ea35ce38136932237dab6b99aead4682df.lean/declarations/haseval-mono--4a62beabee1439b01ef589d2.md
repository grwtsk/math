# HasEval.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ffcc7d-6e11-b2ce-5708-4078ca08e8e8",
  "kind": "theorem",
  "lexical_name": "HasEval.mono",
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
  "slug": "haseval-mono--4a62beabee1439b01ef589d2",
  "source": {
    "blob": "a703a6d70ade1897182e5811a24cff2c0696d0b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a62beabee1439b01ef589d259c1948ecc63e16ce3e79cbf6f61807e4a84207c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ffcc7d-6e11-b2ce-5708-4078ca08e8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasEval.mono {S : Type*} [CommRing S] {a : σ → S}
    {t u : TopologicalSpace S} (h : t ≤ u) (ha : @HasEval _ _ _ t a) :
    @HasEval _ _ _ u a :=
  ⟨fun s ↦ Filter.Tendsto.mono_right (@HasEval.hpow _ _ _ t a ha s) (nhds_mono h),
   Filter.Tendsto.mono_right (@HasEval.tendsto_zero σ _ _ t a ha) (nhds_mono h)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a703a6d70ade1897182e5811a24cff2c0696d0b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
