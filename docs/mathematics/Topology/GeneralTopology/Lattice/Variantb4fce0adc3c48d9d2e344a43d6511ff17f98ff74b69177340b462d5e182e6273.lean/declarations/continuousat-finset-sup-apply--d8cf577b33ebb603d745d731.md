# ContinuousAt.finset_sup'_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3d8e6ae-b1c1-bd80-16ee-ee2f48ed0351",
  "kind": "lemma",
  "lexical_name": "ContinuousAt.finset_sup'_apply",
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
  "slug": "continuousat-finset-sup-apply--d8cf577b33ebb603d745d731",
  "source": {
    "blob": "874817d15b6eee94fb7c4949dd17eb5b5f51bb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variantb4fce0adc3c48d9d2e344a43d6511ff17f98ff74b69177340b462d5e182e6273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8cf577b33ebb603d745d7316f2c89c3acf230e2d8c537be2878622688b87211",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variantb4fce0adc3c48d9d2e344a43d6511ff17f98ff74b69177340b462d5e182e6273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3d8e6ae-b1c1-bd80-16ee-ee2f48ed0351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousAt.finset_sup'_apply (hne : s.Nonempty) (hs : ∀ i ∈ s, ContinuousAt (f i) x) :
    ContinuousAt (fun a ↦ s.sup' hne (f · a)) x :=
  Tendsto.finset_sup'_nhds_apply hne hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variantb4fce0adc3c48d9d2e344a43d6511ff17f98ff74b69177340b462d5e182e6273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variantb4fce0adc3c48d9d2e344a43d6511ff17f98ff74b69177340b462d5e182e6273.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `874817d15b6eee94fb7c4949dd17eb5b5f51bb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
