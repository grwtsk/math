# sigmaOfIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a9fc5b38adb730bf7733307b7b5e515622d319a1c04de590c899b97c9a8127f",
  "kind": "def",
  "lexical_name": "sigmaOfIsColimit",
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
  "slug": "sigmaofiscolimit--d95d3afce5243abaf189c22e",
  "source": {
    "blob": "40445eeb605b3ea9ff344dfd2758e1e5f43192df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d95d3afce5243abaf189c22e7aa342927857f2db676118884e88eb05cb02bc2b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a9fc5b38adb730bf7733307b7b5e515622d319a1c04de590c899b97c9a8127f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaOfIsColimit {c : Cofan E.X} (hc : IsColimit c) {d : Cofan E.Y'} (hd : IsColimit d) :
    PreOneHypercover.{w} S where
  __ := E.toPreZeroHypercover.sigmaOfIsColimit hc
  I₁ _ _ := PUnit
  Y _ _ _ := d.pt
  p₁ _ _ _ := Cofan.IsColimit.desc hd fun i ↦ E.p₁ _ ≫ c.inj _
  p₂ _ _ _ := Cofan.IsColimit.desc hd fun i ↦ E.p₂ _ ≫ c.inj _
  w _ _ _ := Cofan.IsColimit.hom_ext hd _ _ (by simp [E.w])

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40445eeb605b3ea9ff344dfd2758e1e5f43192df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
