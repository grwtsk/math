# binaryCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cdcdab81a12c75f955a199e1692675fe50632d403001b54ff520539eef9ae03",
  "kind": "def",
  "lexical_name": "binaryCofanIsColimit",
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
  "slug": "binarycofaniscolimit--c401326e6453337d63eafc12",
  "source": {
    "blob": "eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 239,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c401326e6453337d63eafc12b212ff03d01f4f5f0ab120cea68c2d2127d05d8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cdcdab81a12c75f955a199e1692675fe50632d403001b54ff520539eef9ae03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryCofanIsColimit (X Y : TopCat.{u}) : IsColimit (TopCat.binaryCofan X Y) := by
  refine Limits.BinaryCofan.isColimitMk (fun s => ofHom
    { toFun := Sum.elim s.inl s.inr, continuous_toFun := ?_ }) ?_ ?_ ?_
  · continuity
  · intro s
    ext
    rfl
  · intro s
    ext
    rfl
  · intro s m h₁ h₂
    ext (x | x)
    exacts [ConcreteCategory.congr_hom h₁ x, ConcreteCategory.congr_hom h₂ x]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
