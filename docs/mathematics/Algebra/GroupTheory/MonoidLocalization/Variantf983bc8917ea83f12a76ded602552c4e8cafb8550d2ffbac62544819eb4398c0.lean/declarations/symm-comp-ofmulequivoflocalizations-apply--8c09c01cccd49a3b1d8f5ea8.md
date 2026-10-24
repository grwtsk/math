# symm_comp_ofMulEquivOfLocalizations_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb088e6a9653d1084284a08cee3570c313548705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7262062-e706-7cb0-3b23-92ac50e10327",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aeae5d95-6bc7-d8f0-058e-23f945d6005c",
  "kind": "theorem",
  "lexical_name": "symm_comp_ofMulEquivOfLocalizations_apply'",
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
  "slug": "symm-comp-ofmulequivoflocalizations-apply--8c09c01cccd49a3b1d8f5ea8",
  "source": {
    "blob": "eb088e6a9653d1084284a08cee3570c313548705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1428,
    "line": 1423,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c09c01cccd49a3b1d8f5ea8727852f72e030c93a6fad872956827eb571680f3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeae5d95-6bc7-d8f0-058e-23f945d6005c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1423–1428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_comp_ofMulEquivOfLocalizations_apply' {k : P ≃* N} (x) :
    k ((f.ofMulEquivOfLocalizations k.symm).toMap x) = f.toMap x := k.apply_symm_apply (f.toMap x)
#align submonoid.localization_map.symm_comp_of_mul_equiv_of_localizations_apply' Submonoid.LocalizationMap.symm_comp_ofMulEquivOfLocalizations_apply'
#align add_submonoid.localization_map.symm_comp_of_add_equiv_of_localizations_apply' AddSubmonoid.LocalizationMap.symm_comp_ofAddEquivOfLocalizations_apply'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean#L1423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb088e6a9653d1084284a08cee3570c313548705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
