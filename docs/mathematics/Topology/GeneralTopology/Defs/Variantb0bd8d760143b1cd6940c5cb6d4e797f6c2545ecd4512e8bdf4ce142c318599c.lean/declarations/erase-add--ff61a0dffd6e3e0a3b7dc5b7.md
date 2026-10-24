# erase_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "101adbf256a058bd3097a212f3c6fd37d1d7a1ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 679,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34c36c04-c02b-895b-0da4-f375eed1ddb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee2ead5a-e1c1-bb7d-93b9-1dfbad818dc2",
  "kind": "theorem",
  "lexical_name": "erase_add",
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
  "slug": "erase-add--ff61a0dffd6e3e0a3b7dc5b7",
  "source": {
    "blob": "101adbf256a058bd3097a212f3c6fd37d1d7a1ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 679,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff61a0dffd6e3e0a3b7dc5b75f7b6867421cd712f5c2c557102518b105cf89f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee2ead5a-e1c1-bb7d-93b9-1dfbad818dc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 679–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erase_add (i : ι) (f₁ f₂ : Π₀ i, β i) : erase i (f₁ + f₂) = erase i f₁ + erase i f₂ :=
  ext fun _ => by simp [ite_zero_add]

variable (β)

/-- `DFinsupp.single` as an `AddMonoidHom`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean#L679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101adbf256a058bd3097a212f3c6fd37d1d7a1ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
