# add_singleton_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f7f8c7c-cd5f-f9e5-6bb7-f0a6d3a1df44",
  "kind": "theorem",
  "lexical_name": "add_singleton_eq",
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
  "slug": "add-singleton-eq--57d9be543c056ddbb727a2c0",
  "source": {
    "blob": "0cf5478cbbdbaf7ee5008ac65d1a3e3a3f31e077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d9be543c056ddbb727a2c0b412e195093a0c574ffdb706a698cb870892c4f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f7f8c7c-cd5f-f9e5-6bb7-f0a6d3a1df44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_singleton_eq (a : A) (r : R) : σ a + {r} = σ (a + ↑ₐ r) :=
  add_comm {r} (σ a) ▸ add_comm (algebraMap R A r) a ▸ singleton_add_eq a r
#align spectrum.add_singleton_eq spectrum.add_singleton_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf5478cbbdbaf7ee5008ac65d1a3e3a3f31e077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
