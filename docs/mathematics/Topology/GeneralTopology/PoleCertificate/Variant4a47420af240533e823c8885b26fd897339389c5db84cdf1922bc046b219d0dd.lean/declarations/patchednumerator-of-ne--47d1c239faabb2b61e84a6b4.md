# patchedNumerator_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 997,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2e92f22-f459-5e20-ad95-6bb15f7f7240",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd531dbc-ac43-1ad5-7806-0f72b6bd2eed",
  "kind": "theorem",
  "lexical_name": "patchedNumerator_of_ne",
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
  "slug": "patchednumerator-of-ne--47d1c239faabb2b61e84a6b4",
  "source": {
    "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1003,
    "line": 997,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47d1c239faabb2b61e84a6b486d8111042b22e5720cddf4433de889e8837ecc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd531dbc-ac43-1ad5-7806-0f72b6bd2eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 997–1003.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem patchedNumerator_of_ne
    (f : ℂ → ℂ) (a w : ℂ)
    (hw : w ≠ 0) :
    patchedNumerator f a w =
      w ^ 9 * f w :=
  Function.update_of_ne hw _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean#L997).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e910f6091b88067e29af8bb15a2f080cb52a38ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
