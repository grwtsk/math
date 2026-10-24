# of_mulEquivOfMulEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cba0fe4-50e7-aa5a-a5aa-6061cb99f791",
  "kind": "theorem",
  "lexical_name": "of_mulEquivOfMulEquiv_apply",
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
  "slug": "of-mulequivofmulequiv-apply--f3c9d210d3b2b2286fa8c8e1",
  "source": {
    "blob": "d763b5e7340438b0e55f07a622ee474b3f3cc701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1605,
    "line": 1598,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c9d210d3b2b2286fa8c8e1689ea7055b3df58301600e2403da4d5f3d880648",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cba0fe4-50e7-aa5a-a5aa-6061cb99f791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1598–1605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_mulEquivOfMulEquiv_apply {k : LocalizationMap T Q} {j : M ≃* P}
    (H : S.map j.toMonoidHom = T) (x) :
    (f.ofMulEquivOfLocalizations (f.mulEquivOfMulEquiv k H)).toMap x = k.toMap (j x) :=
  ext_iff.1 (f.mulEquivOfLocalizations_right_inv (k.ofMulEquivOfDom H)) x
#align submonoid.localization_map.of_mul_equiv_of_mul_equiv_apply Submonoid.LocalizationMap.of_mulEquivOfMulEquiv_apply
#align add_submonoid.localization_map.of_add_equiv_of_add_equiv_apply AddSubmonoid.LocalizationMap.of_addEquivOfAddEquiv_apply

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean#L1598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d763b5e7340438b0e55f07a622ee474b3f3cc701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
