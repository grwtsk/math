# selfAdjoint.continuous_expUnitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:337e2b90-71b0-482a-a12c-2164b7157db6",
  "kind": "lemma",
  "lexical_name": "selfAdjoint.continuous_expUnitary",
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
  "slug": "selfadjoint-continuous-expunitary--0dd6401f2575b4f0b294531f",
  "source": {
    "blob": "5a2b6aaf59f996bb39b79e8464165fbb4fa2b2ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd6401f2575b4f0b294531f430757d806a1bb89a2306713340a0f10c788bee7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:337e2b90-71b0-482a-a12c-2164b7157db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma selfAdjoint.continuous_expUnitary : Continuous (expUnitary : selfAdjoint A → unitary A) := by
  simp only [continuous_induced_rng, Function.comp_def, selfAdjoint.expUnitary_coe]
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2b6aaf59f996bb39b79e8464165fbb4fa2b2ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
