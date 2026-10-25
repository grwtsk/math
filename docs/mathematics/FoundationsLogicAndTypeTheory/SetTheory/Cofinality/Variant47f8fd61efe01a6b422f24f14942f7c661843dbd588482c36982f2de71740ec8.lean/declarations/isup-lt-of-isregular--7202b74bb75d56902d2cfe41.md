# iSup_lt_of_isRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84ec5b1302b419dfc63c0d3aa2a158999ea3cf76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b656a04d-a1d7-b065-3caa-d5ceddab7f8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5177e316-e679-5ca8-1fae-0be84e9a1f71",
  "kind": "theorem",
  "lexical_name": "iSup_lt_of_isRegular",
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
  "slug": "isup-lt-of-isregular--7202b74bb75d56902d2cfe41",
  "source": {
    "blob": "84ec5b1302b419dfc63c0d3aa2a158999ea3cf76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1111,
    "line": 1107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7202b74bb75d56902d2cfe41d267e578f3984d65f009de1be2f7ab0e21d20f58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5177e316-e679-5ca8-1fae-0be84e9a1f71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1107–1111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_lt_of_isRegular {ι} {f : ι → Cardinal} {c} (hc : IsRegular c) (hι : #ι < c) :
    (∀ i, f i < c) → iSup f < c :=
  iSup_lt (by rwa [hc.cof_eq])
#align cardinal.supr_lt_of_is_regular Cardinal.iSup_lt_of_isRegular

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean#L1107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ec5b1302b419dfc63c0d3aa2a158999ea3cf76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
