# disjoint_bits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37ae5cb89a7433435ce02af1512f2196b7cbc7fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76747191-213a-0154-21e5-611a6d52bdda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce73f685-5291-fdbf-bf3a-f08c18888d99",
  "kind": "theorem",
  "lexical_name": "disjoint_bits",
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
  "slug": "disjoint-bits--d23beb7b836201166d45a22b",
  "source": {
    "blob": "37ae5cb89a7433435ce02af1512f2196b7cbc7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 158,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d23beb7b836201166d45a22b325dfa37ac0b4690c6fefb53fe1eb253190e3f61",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce73f685-5291-fdbf-bf3a-f08c18888d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_bits (p q : ℕ) :
    Disjoint (List.cons 1 '' countedSequence p (q + 1))
      (List.cons (-1) '' countedSequence (p + 1) q) := by
  simp_rw [disjoint_left, mem_image, not_exists, exists_imp]
  rintro _ _ ⟨_, rfl⟩ _ ⟨_, _, _⟩

open MeasureTheory.Measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ae5cb89a7433435ce02af1512f2196b7cbc7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
