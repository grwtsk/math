# OneHom.comp_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65d81378047e4331a9bb0763cb2e4c80736a27fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74ce54b0-05c5-445d-6ea8-768c1b420865",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:932858a1-6397-cf0b-ed77-077880dba33e",
  "kind": "theorem",
  "lexical_name": "OneHom.comp_one",
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
  "slug": "onehom-comp-one--9f2b0e3929bd4dde485ae65a",
  "source": {
    "blob": "65d81378047e4331a9bb0763cb2e4c80736a27fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1410,
    "line": 1404,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2b0e3929bd4dde485ae65a492af21b69d836f3af987dfc661bc880bdc074d6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:932858a1-6397-cf0b-ed77-077880dba33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1404–1410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OneHom.comp_one [One M] [One N] [One P] (f : OneHom N P) : f.comp (1 : OneHom M N) = 1 := by
  ext
  simp only [OneHom.map_one, OneHom.coe_comp, Function.comp_apply, OneHom.one_apply]
#align one_hom.comp_one OneHom.comp_one
#align zero_hom.comp_zero ZeroHom.comp_zero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean#L1404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d81378047e4331a9bb0763cb2e4c80736a27fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
