# Submodule.ClosedComplemented.of_finiteDimensional_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b145c6f6f798571ca4680cf424fa53796437524e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 759,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34d6bd6a-6716-eaa5-b166-42c6b785e4a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ca064e6-53c6-734b-7a48-a87b063b6e6b",
  "kind": "lemma",
  "lexical_name": "Submodule.ClosedComplemented.of_finiteDimensional_of_le",
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
  "slug": "submodule-closedcomplemented-of-finitedimensional-of-le--81175bf56b85a15de4b0f931",
  "source": {
    "blob": "b145c6f6f798571ca4680cf424fa53796437524e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 759,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteDimension/Variantaae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81175bf56b85a15de4b0f9315294ff5af006f27644c36abbddf3b5d66e2a89c5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteDimension/Variantaae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ca064e6-53c6-734b-7a48-a87b063b6e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 759–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.ClosedComplemented.of_finiteDimensional_of_le
    {A B : Submodule 𝕜 E} [FiniteDimensional 𝕜 A] (hA : A.ClosedComplemented) [T2Space A]
    (hB : B ≤ A) : B.ClosedComplemented := by
  obtain ⟨p, hp⟩ := hA
  obtain ⟨C, hBC⟩ := B.exists_isCompl
  refine ⟨((projectionOnto B C hBC).domRestrict A).toContinuousLinearMap ∘SL p, fun x ↦ ?_⟩
  simp [hp ⟨x, hB x.2⟩]

omit [IsTopologicalAddGroup F] [ContinuousSMul 𝕜 F] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteDimension/Variantaae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteDimension/Variantaae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.lean#L759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b145c6f6f798571ca4680cf424fa53796437524e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
