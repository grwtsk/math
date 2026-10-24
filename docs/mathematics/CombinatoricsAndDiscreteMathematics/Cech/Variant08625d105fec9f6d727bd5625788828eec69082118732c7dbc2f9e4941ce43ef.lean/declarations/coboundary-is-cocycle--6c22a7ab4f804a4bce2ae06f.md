# coboundary_is_cocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffeb0ebd1d6b4359102f4877d14dc4b79c31b04a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f49e909c-3e8e-b403-8c84-9424d9dd64e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f34f6620-ab1e-7b04-593a-d737c63488c6",
  "kind": "theorem",
  "lexical_name": "coboundary_is_cocycle",
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
  "slug": "coboundary-is-cocycle--6c22a7ab4f804a4bce2ae06f",
  "source": {
    "blob": "ffeb0ebd1d6b4359102f4877d14dc4b79c31b04a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c22a7ab4f804a4bce2ae06ff67f844432c14d4b07a192b6fec9177dd2975872",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f34f6620-ab1e-7b04-593a-d737c63488c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coboundary_is_cocycle
    (complex : FiniteCechComplex)
    {cochain : complex.C1}
    (boundary : complex.Coboundary1 cochain) :
    complex.Cocycle1 cochain := by
  obtain ⟨source, rfl⟩ := boundary
  exact complex.d_sq source

end FiniteCechComplex

/--
Bind a computable finite complex to its exact communication site, selected
finite cover, coefficient identifier, and canonical-index root.  Vanishing is
always relative to this data.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffeb0ebd1d6b4359102f4877d14dc4b79c31b04a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
