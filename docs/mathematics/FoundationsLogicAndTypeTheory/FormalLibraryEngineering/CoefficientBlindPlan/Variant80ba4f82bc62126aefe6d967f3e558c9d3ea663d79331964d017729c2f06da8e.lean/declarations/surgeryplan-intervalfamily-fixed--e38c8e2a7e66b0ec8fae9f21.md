# surgeryPlan_intervalFamily_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9ebfaec99361e4f471d0b7cfe0d9c26336c5a96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c846855-735b-94c1-aab5-82fe572890e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c93b9def-8e77-a049-fb53-050c8f8ec327",
  "kind": "theorem",
  "lexical_name": "surgeryPlan_intervalFamily_fixed",
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
  "slug": "surgeryplan-intervalfamily-fixed--e38c8e2a7e66b0ec8fae9f21",
  "source": {
    "blob": "a9ebfaec99361e4f471d0b7cfe0d9c26336c5a96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e38c8e2a7e66b0ec8fae9f2167e94fa7da5095d26afa906c02a9f167b40dd77d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c93b9def-8e77-a049-fb53-050c8f8ec327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surgeryPlan_intervalFamily_fixed
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) :
    plan.intervalFamily = typeIIProductDyadicIntervals N q := by
  rfl

/-- At the root, evaluation of the coefficient-blind plan is exactly the
literal shell-interval pairing.  This prevents a plan from proving estimates
for an unrelated kernel family. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientBlindPlan/Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ebfaec99361e4f471d0b7cfe0d9c26336c5a96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
