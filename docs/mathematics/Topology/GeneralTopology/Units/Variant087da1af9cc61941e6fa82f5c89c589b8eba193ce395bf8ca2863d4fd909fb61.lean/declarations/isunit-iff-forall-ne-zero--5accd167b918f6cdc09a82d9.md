# isUnit_iff_forall_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "841938dcf64fb27507c03e3319dca1fbe9ecb1fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85aaf4e9-8d3e-d69e-cf18-8c983c00f716",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75cea7a0-c54e-9b2e-cd80-fb737decb3a1",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_forall_ne_zero",
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
  "slug": "isunit-iff-forall-ne-zero--5accd167b918f6cdc09a82d9",
  "source": {
    "blob": "841938dcf64fb27507c03e3319dca1fbe9ecb1fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5accd167b918f6cdc09a82d955cfe36e56e92e99aa2e44118a67b14b3760de68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75cea7a0-c54e-9b2e-cd80-fb737decb3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_forall_ne_zero (f : C(X, R)) : IsUnit f ↔ ∀ x, f x ≠ 0 := by
  simp_rw [f.isUnit_iff_forall_isUnit, isUnit_iff_ne_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841938dcf64fb27507c03e3319dca1fbe9ecb1fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
