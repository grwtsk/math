# extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acaa43759b4810922528c0ecc0805830e8e3865daf80adaf820a11cae5334606",
  "kind": "def",
  "lexical_name": "extend",
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
  "slug": "extend--ab3d9ca71e399a324f7e7e43",
  "source": {
    "blob": "fbdb5beca9bfa4992aa8ac8ce9af1d4e398ca806",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab3d9ca71e399a324f7e7e439ab6c61a24a91dc9003b4e38f176b7ac06478a9c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acaa43759b4810922528c0ecc0805830e8e3865daf80adaf820a11cae5334606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extend
    {Target : Type w}
    [UniformSpace Target] [CompleteSpace Target]
    (completion : RestrictedAdelicCompletion.{u, v} finiteState)
    (map : FiniteCarrier → Target) :
    completion.completion.space → Target := by
  letI : UniformSpace completion.completion.space :=
    completion.completion.uniformStruct
  exact completion.completion.extend map

/--
Genuine completion universal property.

Every uniformly continuous finite-state map into a complete separated target
has exactly one uniformly continuous extension agreeing with the actual
finite-state embedding.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbdb5beca9bfa4992aa8ac8ce9af1d4e398ca806` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
