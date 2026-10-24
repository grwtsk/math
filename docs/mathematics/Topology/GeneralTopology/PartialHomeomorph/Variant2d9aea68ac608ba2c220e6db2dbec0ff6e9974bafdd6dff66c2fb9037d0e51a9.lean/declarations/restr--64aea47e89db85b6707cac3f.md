# restr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80b834a84e152aa7c5b7177828d074099d046ef04c3ce57b1be76a597ec62e11",
  "kind": "def",
  "lexical_name": "restr",
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
  "slug": "restr--64aea47e89db85b6707cac3f",
  "source": {
    "blob": "cd07fefc073617e1b552badfad718ee1d041de7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 562,
    "path": "GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64aea47e89db85b6707cac3f939f582cf42ef1f205af850892fa1bad178916d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80b834a84e152aa7c5b7177828d074099d046ef04c3ce57b1be76a597ec62e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restr (h : e.IsImage s t) (hs : IsOpen (e.source ∩ s)) : PartialHomeomorph X Y where
  toPartialEquiv := h.toPartialEquiv.restr
  open_source := hs
  open_target := h.isOpen_iff.1 hs
  continuousOn_toFun := e.continuousOn.mono inter_subset_left
  continuousOn_invFun := e.symm.continuousOn.mono inter_subset_left

end IsImage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd07fefc073617e1b552badfad718ee1d041de7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
