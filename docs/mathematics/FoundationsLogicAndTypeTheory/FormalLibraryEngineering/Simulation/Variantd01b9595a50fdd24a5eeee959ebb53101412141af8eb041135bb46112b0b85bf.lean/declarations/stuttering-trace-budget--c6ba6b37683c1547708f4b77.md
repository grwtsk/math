# stuttering_trace_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa2b302-8a74-028c-a7f7-85b0cfe78ce2",
  "kind": "theorem",
  "lexical_name": "stuttering_trace_budget",
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
  "slug": "stuttering-trace-budget--c6ba6b37683c1547708f4b77",
  "source": {
    "blob": "aff22b7a4ba4943f743149575c51bcb567db2bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ba6b37683c1547708f4b7757029aed180f3506b2ead6de76b5a7a41c7cb7f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa2b302-8a74-028c-a7f7-85b0cfe78ce2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stuttering_trace_budget {R : X → X → Prop}
    (targetRank adminRank : X → ℕ) (B : ℕ)
    (classification : ∀ {x y}, R x y →
      (targetRank y < targetRank x ∧ adminRank y ≤ B) ∨
        (targetRank y = targetRank x ∧ adminRank y < adminRank x))
    {n : ℕ} {x y : X} (trace : Trace R n x y) :
    n ≤ adminRank x + targetRank x * (B + 1) := by
  have := trace_length_le_rank (fun x => adminRank x + targetRank x * (B + 1))
    (stuttering_total_rank targetRank adminRank B classification) trace
  omega

end FormalResearch.MathematicalTooling.Reduction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff22b7a4ba4943f743149575c51bcb567db2bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
