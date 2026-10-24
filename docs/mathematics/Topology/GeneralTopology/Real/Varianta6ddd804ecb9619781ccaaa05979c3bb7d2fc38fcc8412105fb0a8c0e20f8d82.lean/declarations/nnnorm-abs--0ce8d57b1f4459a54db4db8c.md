# nnnorm_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0384695-3e2f-816d-a979-8957ddd6acec",
  "kind": "lemma",
  "lexical_name": "nnnorm_abs",
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
  "slug": "nnnorm-abs--0ce8d57b1f4459a54db4db8c",
  "source": {
    "blob": "846349e4b2bc8a60dbec1837a691e03f264b6ae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ce8d57b1f4459a54db4db8cd01129f9ad9578b3d0f93385df6c62a59d8e1d68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0384695-3e2f-816d-a979-8957ddd6acec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma nnnorm_abs (r : ℝ) : ‖|r|‖₊ = ‖r‖₊ := by simp [nnnorm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846349e4b2bc8a60dbec1837a691e03f264b6ae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
