# unit_eq_unit_of_mem_ofUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc37224f-51f1-d276-9ca8-167006c27a12",
  "kind": "lemma",
  "lexical_name": "unit_eq_unit_of_mem_ofUnits",
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
  "slug": "unit-eq-unit-of-mem-ofunits--49fca7e7208dd1ad72b759e2",
  "source": {
    "blob": "b55f529a5bda194cb47c6adb8a3d92f8a3fc938e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 237,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49fca7e7208dd1ad72b759e2425046f75dcb1d7696ebfcb60117010fe23c9b66",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc37224f-51f1-d276-9ca8-167006c27a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unit_eq_unit_of_mem_ofUnits (S : Subgroup Mˣ) {x : M} (h₁ : IsUnit x)
    (h₂ : x ∈ S.ofUnits) : h₁.unit = S.unit_of_mem_ofUnits h₂ := Units.ext rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b55f529a5bda194cb47c6adb8a3d92f8a3fc938e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
