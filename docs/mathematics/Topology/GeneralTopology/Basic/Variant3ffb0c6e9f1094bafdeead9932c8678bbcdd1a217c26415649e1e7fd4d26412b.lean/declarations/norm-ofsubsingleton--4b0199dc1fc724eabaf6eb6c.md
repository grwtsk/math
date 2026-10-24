# norm_ofSubsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6623c6b7-4194-f2dd-bbfe-8afc639b8fff",
  "kind": "theorem",
  "lexical_name": "norm_ofSubsingleton",
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
  "slug": "norm-ofsubsingleton--4b0199dc1fc724eabaf6eb6c",
  "source": {
    "blob": "7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b0199dc1fc724eabaf6eb6c4fbe7b1dc2efeacceab99d087ad4ac276ca7f87e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6623c6b7-4194-f2dd-bbfe-8afc639b8fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_ofSubsingleton [Subsingleton ι] (i : ι) (f : G →L[𝕜] G') :
    ‖ofSubsingleton 𝕜 G G' i f‖ = ‖f‖ := by
  let : Unique ι := uniqueOfSubsingleton i
  simp [norm_def, ContinuousLinearMap.norm_def, (Equiv.funUnique _ _).symm.surjective.forall]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
