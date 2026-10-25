# targetQuotient_coarsest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63c91efd1e773b3f55872b7f2acabc82c118c790",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87b77c70-9c05-08e0-0ffb-c8f0da9edd77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80274136-a884-c0bc-7592-1fdc2d1cadc6",
  "kind": "theorem",
  "lexical_name": "targetQuotient_coarsest",
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
  "slug": "targetquotient-coarsest--ec5117fc6a31dcf97fe126fc",
  "source": {
    "blob": "63c91efd1e773b3f55872b7f2acabc82c118c790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec5117fc6a31dcf97fe126fc5b3e2cb4a01970532cd69d2f03a0cd4be2cb7652",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80274136-a884-c0bc-7592-1fdc2d1cadc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetQuotient_coarsest (targets : TargetFamily.{u, v} X) {Q : Type w}
    (q : X → Q) (preserves : ∀ i, RecoverableFrom q (targets.value i)) :
    (∀ i, RecoverableFrom (targetClass targets) (targets.value i)) ∧
    (∀ x y, q x = q y → targetClass targets x = targetClass targets y) ∧
    ∃! factor : Quotient (Setoid.ker q) → TargetQuotient targets,
      ∀ x, factor (Quotient.mk (Setoid.ker q) x) = targetClass targets x := by
  refine ⟨targetQuotient_targets_recoverable targets, ?_,
    targetFactor targets q preserves, fun _ => rfl, ?_⟩
  · intro x y same
    exact Quotient.sound (fun i => (preserves i).eq_of_eq same)
  · intro factor agrees
    funext point
    exact Quotient.inductionOn point agrees

/-- With surjectivity, the same factor exists uniquely on the entire codomain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c91efd1e773b3f55872b7f2acabc82c118c790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
