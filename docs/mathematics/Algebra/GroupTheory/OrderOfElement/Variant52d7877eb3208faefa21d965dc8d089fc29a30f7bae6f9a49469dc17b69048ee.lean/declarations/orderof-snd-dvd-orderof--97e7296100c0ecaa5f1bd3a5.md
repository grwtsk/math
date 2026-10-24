# orderOf_snd_dvd_orderOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb03701a-9ec0-6f34-efb4-89265314ed19",
  "kind": "theorem",
  "lexical_name": "orderOf_snd_dvd_orderOf",
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
  "slug": "orderof-snd-dvd-orderof--97e7296100c0ecaa5f1bd3a5",
  "source": {
    "blob": "0d101091ab1504629c78ea2898c51d7a248b9357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1150,
    "line": 1145,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97e7296100c0ecaa5f1bd3a58e5f96e684170217328432d835cf8069c4343f5f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb03701a-9ec0-6f34-efb4-89265314ed19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1145–1150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_snd_dvd_orderOf : orderOf x.2 ∣ orderOf x :=
  minimalPeriod_snd_dvd
#align order_of_snd_dvd_order_of orderOf_snd_dvd_orderOf
#align add_order_of_snd_dvd_add_order_of add_orderOf_snd_dvd_add_orderOf

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean#L1145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d101091ab1504629c78ea2898c51d7a248b9357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
