# monoidHomOfForallMemZpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96a3fe17592e0aefb3dfde89bd05956022d2f254b2ef32718d9ba3dfc0f0b5af",
  "kind": "def",
  "lexical_name": "monoidHomOfForallMemZpowers",
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
  "slug": "monoidhomofforallmemzpowers--347f84a7b25798cb020ae5d5",
  "source": {
    "blob": "f7de4d901376ff201d0d40848888e6c54720426c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 848,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:347f84a7b25798cb020ae5d58dcf341e184294946872f3c3e0828695bdeb89d7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96a3fe17592e0aefb3dfde89bd05956022d2f254b2ef32718d9ba3dfc0f0b5af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidHomOfForallMemZpowers : G →* G' where
  toFun x := g' ^ (Classical.choose <| mem_zpowers_iff.mp <| hg x)
  map_one' := orderOf_dvd_iff_zpow_eq_one.mp <|
                (Int.natCast_dvd_natCast.mpr hg').trans <| orderOf_dvd_iff_zpow_eq_one.mpr <|
                Classical.choose_spec <| mem_zpowers_iff.mp <| hg 1
  map_mul' x y := by
    simp only [← zpow_add, zpow_eq_zpow_iff_modEq]
    apply Int.ModEq.of_dvd (Int.natCast_dvd_natCast.mpr hg')
    rw [← zpow_eq_zpow_iff_modEq, zpow_add]
    simp only [fun x ↦ Classical.choose_spec <| mem_zpowers_iff.mp <| hg x]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7de4d901376ff201d0d40848888e6c54720426c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
