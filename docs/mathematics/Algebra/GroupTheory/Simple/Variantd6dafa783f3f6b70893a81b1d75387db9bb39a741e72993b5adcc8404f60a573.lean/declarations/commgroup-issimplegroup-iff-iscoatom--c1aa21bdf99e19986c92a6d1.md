# CommGroup.isSimpleGroup_iff_isCoatom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f7e8cee-0e40-f24a-526b-0c3229cb8586",
  "kind": "theorem",
  "lexical_name": "CommGroup.isSimpleGroup_iff_isCoatom",
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
  "slug": "commgroup-issimplegroup-iff-iscoatom--c1aa21bdf99e19986c92a6d1",
  "source": {
    "blob": "7d1d26d8ebeb6e66771b04bafb7f62ab8f50fa32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/Algebra/GroupTheory/Simple/Variantd6dafa783f3f6b70893a81b1d75387db9bb39a741e72993b5adcc8404f60a573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1aa21bdf99e19986c92a6d1ad1c47d4e50890c986d60bef65288fa455cce831",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Simple/Variantd6dafa783f3f6b70893a81b1d75387db9bb39a741e72993b5adcc8404f60a573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f7e8cee-0e40-f24a-526b-0c3229cb8586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CommGroup.isSimpleGroup_iff_isCoatom {G : Type*} [CommGroup G] {M : Subgroup G} :
    IsSimpleGroup (G ⧸ M) ↔ IsCoatom M := by
  rw [← Set.isSimpleOrder_Ici_iff_isCoatom,
    ← (QuotientGroup.comapMk'OrderIso M).isSimpleOrder_iff, isSimpleGroup_iff, isSimpleOrder_iff]
  simp [Subgroup.normal_of_isMulCommutative]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Simple/Variantd6dafa783f3f6b70893a81b1d75387db9bb39a741e72993b5adcc8404f60a573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Simple/Variantd6dafa783f3f6b70893a81b1d75387db9bb39a741e72993b5adcc8404f60a573.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1d26d8ebeb6e66771b04bafb7f62ab8f50fa32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
