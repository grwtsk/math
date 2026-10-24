# dvd_of_mem_factors'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1588,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4831040b-0a20-fbfe-4bd7-218fbe86ea12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b6d1ef8-80f0-a66c-dd6f-93936942c873",
  "kind": "theorem",
  "lexical_name": "dvd_of_mem_factors'",
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
  "slug": "dvd-of-mem-factors--25a9790ffbd0ba3a61996332",
  "source": {
    "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1596,
    "line": 1588,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a9790ffbd0ba3a61996332915fa05995abf05a8237137772cf8e1f88a89add",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b6d1ef8-80f0-a66c-dd6f-93936942c873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1588–1596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_of_mem_factors' {a : α} {p : Associates α} {hp : Irreducible p} {hz : a ≠ 0}
    (h_mem : Subtype.mk p hp ∈ factors' a) : p ∣ Associates.mk a := by
  haveI := Classical.decEq (Associates α)
  apply dvd_of_mem_factors (hp := hp)
  rw [factors_mk _ hz]
  apply mem_factorSet_some.2 h_mem
#align associates.dvd_of_mem_factors' Associates.dvd_of_mem_factors'


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean#L1588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c291d382c6d9d4e59536769a537c8fce1dfb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
