# mem_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd07b0d2-bce4-858d-9bae-819a4e0bd954",
  "kind": "theorem",
  "lexical_name": "mem_lift",
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
  "slug": "mem-lift--22b64eecb07cc7b3e4eebcbc",
  "source": {
    "blob": "a7dff30fbd9e209ec3b83505313ee3ba8e4ce120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/Lift/Variant48c2611cc9a8318faa0c2fd2a6eb00d12784ca0134f275afcb2abc41a89ed165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22b64eecb07cc7b3e4eebcbca744e048cfce086d1a4e2bcfff95a6624ef05ad5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lift/Variant48c2611cc9a8318faa0c2fd2a6eb00d12784ca0134f275afcb2abc41a89ed165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd07b0d2-bce4-858d-9bae-819a4e0bd954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_lift {s : Set β} {t : Set α} (ht : t ∈ f) (hs : s ∈ g t) : s ∈ f.lift g :=
  le_principal_iff.mp <|
    show f.lift g ≤ 𝓟 s from iInf_le_of_le t <| iInf_le_of_le ht <| le_principal_iff.mpr hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lift/Variant48c2611cc9a8318faa0c2fd2a6eb00d12784ca0134f275afcb2abc41a89ed165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lift/Variant48c2611cc9a8318faa0c2fd2a6eb00d12784ca0134f275afcb2abc41a89ed165.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7dff30fbd9e209ec3b83505313ee3ba8e4ce120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
