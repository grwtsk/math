# oldFiber_typed_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e382ce8cd74303b90bf628f8d4ae15bf98cf22c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77bb5ab5-4ab9-8b6b-d9f5-7a8cfd68f978",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9bb75e5-6af7-bc4a-9d5c-7fa67b2aa516",
  "kind": "theorem",
  "lexical_name": "oldFiber_typed_preserved",
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
  "slug": "oldfiber-typed-preserved--80025cad6a5618b956c949b8",
  "source": {
    "blob": "1e382ce8cd74303b90bf628f8d4ae15bf98cf22c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80025cad6a5618b956c949b88333773112f1e7cf367aeb827b32f34cef687094",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9bb75e5-6af7-bc4a-9d5c-7fa67b2aa516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oldFiber_typed_preserved
    {source target : FinitePrimeState}
    (extension : CertifiedPrimeExtension source target)
    (prime : Nat)
    (membership : prime ∈ source.primes) :
    target.fiberAt prime
        (extension.target_primes ▸
          Finset.mem_insert_of_mem membership) =
      source.fiberAt prime membership :=
  extension.oldFibersPreserved prime membership

/-- The adjoined fiber is the exact certified typed value supplied to the extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e382ce8cd74303b90bf628f8d4ae15bf98cf22c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
