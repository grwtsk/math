# monic_X_pow_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dec5672ce8de15bbbae069dd11df8348b9943a92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:205a2778-dcf8-def7-a1bb-f1ad07ba1263",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:468029eb-5ab8-119b-fccc-a28a6f4ae79e",
  "kind": "theorem",
  "lexical_name": "monic_X_pow_sub",
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
  "slug": "monic-x-pow-sub--181ff5301a0651b5c13da172",
  "source": {
    "blob": "dec5672ce8de15bbbae069dd11df8348b9943a92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 434,
    "path": "GRWTSK/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:181ff5301a0651b5c13da172dd60b58ee8b723998c12552a130205f864488fb3",
  "verification": {
    "reference": "docs/verification/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:468029eb-5ab8-119b-fccc-a28a6f4ae79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monic_X_pow_sub {n : ℕ} (H : degree p < n) : Monic (X ^ n - p) := by
  simpa [sub_eq_add_neg] using monic_X_pow_add (show degree (-p) < n by rwa [← degree_neg p] at H)

/-- `X ^ n - a` is monic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec5672ce8de15bbbae069dd11df8348b9943a92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
