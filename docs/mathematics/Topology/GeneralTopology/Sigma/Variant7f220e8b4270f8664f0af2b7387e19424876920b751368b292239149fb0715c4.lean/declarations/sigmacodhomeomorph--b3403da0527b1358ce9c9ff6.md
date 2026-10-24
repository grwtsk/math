# sigmaCodHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c23aaaedb1e0e338c88760b84693ce11d3c7c416b1ea42b2cc8aaeec371876a",
  "kind": "def",
  "lexical_name": "sigmaCodHomeomorph",
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
  "slug": "sigmacodhomeomorph--b3403da0527b1358ce9c9ff6",
  "source": {
    "blob": "f309c7e62cb9af51e1a70ab65b94e28169052fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Sigma/Variant7f220e8b4270f8664f0af2b7387e19424876920b751368b292239149fb0715c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3403da0527b1358ce9c9ff65d1e3f3d84c14af0357a92007397f1b4731dc43f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sigma/Variant7f220e8b4270f8664f0af2b7387e19424876920b751368b292239149fb0715c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c23aaaedb1e0e338c88760b84693ce11d3c7c416b1ea42b2cc8aaeec371876a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaCodHomeomorph : C(X, Σ i, Y i) ≃ₜ Σ i, C(X, Y i) :=
  .symm <| Equiv.toHomeomorphOfIsInducing
    (.ofBijective _ ⟨isEmbedding_sigmaMk_comp.injective, fun f ↦
      let ⟨i, g, hg⟩ := f.exists_lift_sigma; ⟨⟨i, g⟩, hg.symm⟩⟩)
    isEmbedding_sigmaMk_comp.isInducing

end ConnectedSpace

end ContinuousMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sigma/Variant7f220e8b4270f8664f0af2b7387e19424876920b751368b292239149fb0715c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sigma/Variant7f220e8b4270f8664f0af2b7387e19424876920b751368b292239149fb0715c4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f309c7e62cb9af51e1a70ab65b94e28169052fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
