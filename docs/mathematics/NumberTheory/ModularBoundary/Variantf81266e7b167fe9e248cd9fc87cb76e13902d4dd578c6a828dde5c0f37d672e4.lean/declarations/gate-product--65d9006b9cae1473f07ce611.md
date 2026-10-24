# gate_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c435291c-fe18-9d07-c41f-5781c34f1914",
  "kind": "theorem",
  "lexical_name": "gate_product",
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
  "slug": "gate-product--65d9006b9cae1473f07ce611",
  "source": {
    "blob": "7333829df598650d817679d8a61b4dbd6ef77ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 117,
    "path": "GRWTSK/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65d9006b9cae1473f07ce6111671465d4bd01cc6f839895d32388cf14efafe3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c435291c-fe18-9d07-c41f-5781c34f1914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gate_product (P : Finset ℕ) (n : ℕ) :
    (∏ p ∈ P, gateBit p n) = if Passes P n then 1 else 0 := by
  classical
  induction P using Finset.induction_on with
  | empty => simp [Passes]
  | @insert p P hp ih =>
    rw [Finset.prod_insert hp, ih]
    by_cases hg : Gate p n
    · have hpass : Passes (insert p P) n ↔ Passes P n := by simp [Passes, hg]
      simp only [gateBit, if_pos hg, one_mul, hpass]
    · have hpass : ¬ Passes (insert p P) n := by
        intro h
        exact hg (h p (Finset.mem_insert_self p P))
      simp only [gateBit, if_neg hg, zero_mul, if_neg hpass]

/-- The exact product-of-boundary-gates prime-counting formula, including N=0 and N=1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7333829df598650d817679d8a61b4dbd6ef77ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
