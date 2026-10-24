# iccHomeoI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2fe6b9f6eb3fd968ddaeb7680902ba9d994a7ba8d5561aaa56e60822dc8871e",
  "kind": "def",
  "lexical_name": "iccHomeoI",
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
  "slug": "icchomeoi--15aa4c624629c3ac98e392c9",
  "source": {
    "blob": "4fef794d563e11e47a027740fc7a996d332049f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 354,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15aa4c624629c3ac98e392c9b1ebb5f2d44635f8030fb28585ae8b44edcafd73",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2fe6b9f6eb3fd968ddaeb7680902ba9d994a7ba8d5561aaa56e60822dc8871e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iccHomeoI (a b : 𝕜) (h : a < b) : Set.Icc a b ≃ₜ Set.Icc (0 : 𝕜) (1 : 𝕜) := by
  let e := Homeomorph.image (affineHomeomorph (b - a) a (sub_pos.mpr h).ne.symm) (Set.Icc 0 1)
  refine (e.trans ?_).symm
  apply Homeomorph.setCongr
  rw [affineHomeomorph_image_I _ _ (sub_pos.2 h)]
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fef794d563e11e47a027740fc7a996d332049f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
