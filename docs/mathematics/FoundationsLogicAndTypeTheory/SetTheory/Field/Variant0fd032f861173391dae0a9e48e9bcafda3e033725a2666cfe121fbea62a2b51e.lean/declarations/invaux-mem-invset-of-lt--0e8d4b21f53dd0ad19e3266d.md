# invAux_mem_invSet_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb7334b87b63b82692e7d698a69d7b65853cd113",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fd032f861173391dae0a9e48e9bcafda3e033725a2666cfe121fbea62a2b51e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ba916ce-0858-0fe2-01a3-fe4bc1227a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8af199e-c3a4-7ccd-c0b1-658a34c5425e",
  "kind": "theorem",
  "lexical_name": "invAux_mem_invSet_of_lt",
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
  "slug": "invaux-mem-invset-of-lt--0e8d4b21f53dd0ad19e3266d",
  "source": {
    "blob": "fb7334b87b63b82692e7d698a69d7b65853cd113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variant0fd032f861173391dae0a9e48e9bcafda3e033725a2666cfe121fbea62a2b51e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e8d4b21f53dd0ad19e3266da49bc09a89dfbbcd81c6e68257221801b9836e57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variant0fd032f861173391dae0a9e48e9bcafda3e033725a2666cfe121fbea62a2b51e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8af199e-c3a4-7ccd-c0b1-658a34c5425e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invAux_mem_invSet_of_lt (ha : a ≠ 0) (hb : a < b) : invAux a ∈ invSet b := by
  have H := cons_mem_invSet ha hb (zero_mem_invSet b)
  rwa [mul_zero, add_zero, mul_one] at H

/-- We set up a simultaneous induction to prove that `invAux a` is the inverse of `a`, and no
element in its defining set `invSet a` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variant0fd032f861173391dae0a9e48e9bcafda3e033725a2666cfe121fbea62a2b51e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variant0fd032f861173391dae0a9e48e9bcafda3e033725a2666cfe121fbea62a2b51e.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb7334b87b63b82692e7d698a69d7b65853cd113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
