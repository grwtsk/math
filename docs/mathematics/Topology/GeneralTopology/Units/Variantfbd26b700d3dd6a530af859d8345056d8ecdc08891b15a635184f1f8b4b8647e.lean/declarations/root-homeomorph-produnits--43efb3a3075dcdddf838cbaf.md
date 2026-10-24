# _root_.Homeomorph.prodUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0e18394d90ffc507b2b794fb31c79ee40a7dedd547ab4afef3c48f840232a9a",
  "kind": "def",
  "lexical_name": "_root_.Homeomorph.prodUnits",
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
  "slug": "root-homeomorph-produnits--43efb3a3075dcdddf838cbaf",
  "source": {
    "blob": "53f18f912db98510cdac71c94bc5ee125281111f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43efb3a3075dcdddf838cbaf24b8eab26e0a508658ea8bf4d40a582b96284b3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0e18394d90ffc507b2b794fb31c79ee40a7dedd547ab4afef3c48f840232a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Homeomorph.prodUnits : (α × β)ˣ ≃ₜ αˣ × βˣ where
  continuous_toFun :=
    (continuous_fst.units_map (MonoidHom.fst α β)).prodMk
      (continuous_snd.units_map (MonoidHom.snd α β))
  continuous_invFun :=
    Units.continuous_iff.2
      ⟨continuous_val.fst'.prodMk continuous_val.snd',
        continuous_coe_inv.fst'.prodMk continuous_coe_inv.snd'⟩
  toEquiv := MulEquiv.prodUnits.toEquiv

end Units
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f18f912db98510cdac71c94bc5ee125281111f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
