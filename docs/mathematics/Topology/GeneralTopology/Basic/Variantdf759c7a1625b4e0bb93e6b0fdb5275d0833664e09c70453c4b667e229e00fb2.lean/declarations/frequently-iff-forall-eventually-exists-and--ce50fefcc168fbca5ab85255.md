# frequently_iff_forall_eventually_exists_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:839cd60c-2b20-a508-04ea-5c919387b01e",
  "kind": "theorem",
  "lexical_name": "frequently_iff_forall_eventually_exists_and",
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
  "slug": "frequently-iff-forall-eventually-exists-and--ce50fefcc168fbca5ab85255",
  "source": {
    "blob": "0f10793f23ae104512c0a8fb86ab4625b5eb0aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1322,
    "line": 1317,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce50fefcc168fbca5ab85255d6b0f7dec6cbef47c6c3d22dd4465bff08f7adbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839cd60c-2b20-a508-04ea-5c919387b01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1317–1322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_iff_forall_eventually_exists_and {p : α → Prop} {f : Filter α} :
    (∃ᶠ x in f, p x) ↔ ∀ {q : α → Prop}, (∀ᶠ x in f, q x) → ∃ x, p x ∧ q x :=
  ⟨fun hp q hq => (hp.and_eventually hq).exists, fun H hp => by
    simpa only [and_not_self_iff, exists_false] using H hp⟩
#align filter.frequently_iff_forall_eventually_exists_and Filter.frequently_iff_forall_eventually_exists_and

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean#L1317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f10793f23ae104512c0a8fb86ab4625b5eb0aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
