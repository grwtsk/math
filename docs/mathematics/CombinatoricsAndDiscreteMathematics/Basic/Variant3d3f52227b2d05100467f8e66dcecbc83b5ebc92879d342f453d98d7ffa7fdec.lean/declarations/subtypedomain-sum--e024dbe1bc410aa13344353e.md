# subtypeDomain_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1099,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc623f07-915a-2089-3bb7-f4d2c063b5df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7634e4eb-9734-6930-2740-0fe0cc1d6baf",
  "kind": "theorem",
  "lexical_name": "subtypeDomain_sum",
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
  "slug": "subtypedomain-sum--e024dbe1bc410aa13344353e",
  "source": {
    "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1103,
    "line": 1099,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e024dbe1bc410aa13344353ed5e33dc82ec2c0814869f53879dff862b994f3ba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7634e4eb-9734-6930-2740-0fe0cc1d6baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1099–1103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtypeDomain_sum {s : Finset ι} {h : ι → α →₀ M} :
    (∑ c in s, h c).subtypeDomain p = ∑ c in s, (h c).subtypeDomain p :=
  (subtypeDomainAddMonoidHom : _ →+ Subtype p →₀ M).map_sum _ s
#align finsupp.subtype_domain_sum Finsupp.subtypeDomain_sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean#L1099).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b64bed42f59ef2e8765524b24d6104e6a0f7c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
