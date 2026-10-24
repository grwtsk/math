# binaryCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77158d4e6fd0aca5fa2367cfeaa0de674993e54dcbe2632a7a4bbe6b7afc1407",
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
  "slug": "binarycofaniscolimit--313036ea1e3a9eeb3c7d01e0",
  "source": {
    "blob": "9c64e66c24f75ba22787954cea811d87b09e00f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:313036ea1e3a9eeb3c7d01e0103d24377469333d1176a90ad4af611a1920b81d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77158d4e6fd0aca5fa2367cfeaa0de674993e54dcbe2632a7a4bbe6b7afc1407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–260.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c64e66c24f75ba22787954cea811d87b09e00f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
