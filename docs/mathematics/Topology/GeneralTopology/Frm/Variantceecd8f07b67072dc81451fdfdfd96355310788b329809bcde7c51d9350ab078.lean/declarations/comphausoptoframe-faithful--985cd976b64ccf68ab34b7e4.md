# CompHausOpToFrame.faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42770ba9f97715163ef6494ee7e9b7bb7912714a311c11bfa2647fa13a552ef0",
  "kind": "instance",
  "lexical_name": "CompHausOpToFrame.faithful",
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
  "slug": "comphausoptoframe-faithful--985cd976b64ccf68ab34b7e4",
  "source": {
    "blob": "0e51dbbf02c5926cf9bd04b2246c00b3ac61a52a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/Frm/Variantceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:985cd976b64ccf68ab34b7e4dc2291bc1e20f21fe01894085b8550eba3d15e9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Frm/Variantceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42770ba9f97715163ef6494ee7e9b7bb7912714a311c11bfa2647fa13a552ef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CompHausOpToFrame.faithful : (compHausToTop.op ⋙ topCatOpToFrm.{u}).Faithful :=
  ⟨fun {X _ _ _} h =>  Quiver.Hom.unop_inj <| ConcreteCategory.ext <|
    Opens.comap_injective (β := (unop X).toTop) <| FrameHom.ext <|
      CategoryTheory.congr_fun h⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Frm/Variantceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Frm/Variantceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e51dbbf02c5926cf9bd04b2246c00b3ac61a52a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
