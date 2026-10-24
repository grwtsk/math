# isFractional_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29225cabea3ab2bdd3a5524c225bad2275d04102",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8733ce2d-585b-7fef-0eec-aa2351ab8ae5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9251e520-6c8a-6295-d77a-c3a023e5d1de",
  "kind": "theorem",
  "lexical_name": "isFractional_of_le",
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
  "slug": "isfractional-of-le--e8dbef6e1cbe72857d2a7d63",
  "source": {
    "blob": "29225cabea3ab2bdd3a5524c225bad2275d04102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 221,
    "path": "GRWTSK/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8dbef6e1cbe72857d2a7d630af7cab36dba69ea9f37bd8db357be4f905dbe15",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9251e520-6c8a-6295-d77a-c3a023e5d1de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFractional_of_le {I : Submodule R P} {J : FractionalIdeal S P} (hIJ : I ≤ J) :
    IsFractional S I := by
  obtain ⟨a, a_mem, ha⟩ := J.isFractional
  use a, a_mem
  intro b b_mem
  exact ha b (hIJ b_mem)

/-- Map an ideal `I` to a fractional ideal by forgetting `I` is integral.

This is the function that implements the coercion `Ideal R → FractionalIdeal S P`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29225cabea3ab2bdd3a5524c225bad2275d04102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
