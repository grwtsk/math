# tendsto_diracProba_iff_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ba0c770-7c56-7858-b69e-5ac09ffe43ee",
  "kind": "lemma",
  "lexical_name": "tendsto_diracProba_iff_tendsto",
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
  "slug": "tendsto-diracproba-iff-tendsto--f3f6ebad3933d69070a70e8c",
  "source": {
    "blob": "0de6275ad78f936ad4c7dbfbf6fa838b71a91e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f6ebad3933d69070a70e8c513fc0f21569346ce9799572cd40c5bd31f4d9f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ba0c770-7c56-7858-b69e-5ac09ffe43ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_diracProba_iff_tendsto [CompletelyRegularSpace X] {x : X} (L : Filter X) :
    Tendsto diracProba L (𝓝 (diracProba x)) ↔ Tendsto id L (𝓝 x) := by
  constructor
  · contrapose
    exact not_tendsto_diracProba_of_not_tendsto L
  · intro h
    have aux := (@continuous_diracProba X _ _ _).continuousAt (x := x)
    simp only [ContinuousAt] at aux
    exact aux.comp h

/-- An inverse function to `diracProba` (only really an inverse under hypotheses that
guarantee injectivity of `diracProba`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de6275ad78f936ad4c7dbfbf6fa838b71a91e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
