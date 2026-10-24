# HasCompactMulSupport.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9c109dd1d67162ad7754b61420507c736439e38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d537fa3-a39d-382b-4a95-584a33db998d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed5a015d-ef82-ffa3-167b-29507e471142",
  "kind": "theorem",
  "lexical_name": "HasCompactMulSupport.mono",
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
  "slug": "hascompactmulsupport-mono--5b7cbcd4211e59c52b0c21a5",
  "source": {
    "blob": "c9c109dd1d67162ad7754b61420507c736439e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7cbcd4211e59c52b0c21a56791923aeaf477fd1adcd1a96a6860de99e14ed1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed5a015d-ef82-ffa3-167b-29507e471142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactMulSupport.mono {f' : α → γ} (hf : HasCompactMulSupport f)
    (hff' : mulSupport f' ⊆ mulSupport f) : HasCompactMulSupport f' :=
  hf.mono' <| hff'.trans subset_closure
#align has_compact_mul_support.mono HasCompactMulSupport.mono
#align has_compact_support.mono HasCompactSupport.mono

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c109dd1d67162ad7754b61420507c736439e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
