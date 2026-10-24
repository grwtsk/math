# eq_getElem_of_length_eq_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7dd73cb-f6c3-4c9e-5d4a-e837349fb27a",
  "kind": "theorem",
  "lexical_name": "eq_getElem_of_length_eq_three",
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
  "slug": "eq-getelem-of-length-eq-three--7551f89d843ec23972a10e4c",
  "source": {
    "blob": "320cb9b319d549895b9ccbc5cc2f5256e84577ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 339,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7551f89d843ec23972a10e4cc379f0a69e4d5d4ad82f07733bf29cfab68524b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7dd73cb-f6c3-4c9e-5d4a-e837349fb27a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_getElem_of_length_eq_three : (l : List α) → (hl : l.length = 3) → l = [l[0]'(hl ▸ by decide), l[1]'(hl ▸ by decide), l[2]'(hl ▸ by decide)]
  | [_, _, _], _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320cb9b319d549895b9ccbc5cc2f5256e84577ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
