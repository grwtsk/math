# val_finset_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:382ac014-7fcb-913c-ac13-a7cb6d0652a0",
  "kind": "theorem",
  "lexical_name": "val_finset_prod",
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
  "slug": "val-finset-prod--da45bbbf61858ef0dc821519",
  "source": {
    "blob": "e0824df3586b63930f0e623cdbe09b57cb0f51e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 113,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da45bbbf61858ef0dc821519e1c5bc9fe1b9245af79df6e6fd7f18f757adc7e2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382ac014-7fcb-913c-ac13-a7cb6d0652a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem val_finset_prod {ι G} [CommGroup G] (H : Subgroup G) (f : ι → H) (s : Finset ι) :
    ↑(∏ i in s, f i) = (∏ i in s, f i : G) :=
  SubmonoidClass.coe_finset_prod f s
#align subgroup.coe_finset_prod Subgroup.val_finset_prod
#align add_subgroup.coe_finset_sum AddSubgroup.val_finset_sum

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0824df3586b63930f0e623cdbe09b57cb0f51e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
