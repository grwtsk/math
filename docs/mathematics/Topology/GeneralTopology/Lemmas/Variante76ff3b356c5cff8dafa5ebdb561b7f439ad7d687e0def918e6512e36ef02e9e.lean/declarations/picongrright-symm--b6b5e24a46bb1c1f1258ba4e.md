# piCongrRight_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6baab7e4c182041ffe730e81632aaec349057894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87f6877a-b769-076d-8a90-d5a8c85560e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b87e29c-f0c1-9192-06b7-1b95a1326846",
  "kind": "theorem",
  "lexical_name": "piCongrRight_symm",
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
  "slug": "picongrright-symm--b6b5e24a46bb1c1f1258ba4e",
  "source": {
    "blob": "6baab7e4c182041ffe730e81632aaec349057894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6b5e24a46bb1c1f1258ba4edd0d15b925bbc0920c34d94d508811f76e410396",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b87e29c-f0c1-9192-06b7-1b95a1326846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piCongrRight_symm {ι : Type*} {Y₁ Y₂ : ι → Type*} [∀ i, TopologicalSpace (Y₁ i)]
    [∀ i, TopologicalSpace (Y₂ i)] (F : ∀ i, Y₁ i ≃ₜ Y₂ i) :
    (piCongrRight F).symm = piCongrRight fun i => (F i).symm :=
  rfl

/-- `Equiv.piCongr` as a homeomorphism: this is the natural homeomorphism
`Π i₁, Y₁ i ≃ₜ Π i₂, Y₂ i₂` obtained from a bijection `ι₁ ≃ ι₂` and homeomorphisms
`Y₁ i₁ ≃ₜ Y₂ (e i₁)` for each `i₁ : ι₁`. -/
@[simps! apply toEquiv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baab7e4c182041ffe730e81632aaec349057894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
