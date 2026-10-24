# hasEigenvalue_of_hasGeneralizedEigenvalue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac57b8661000f2da4445779737b9c044bb1a47fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/eff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99225078-cfed-f801-0d85-710be0fed84e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efb88d83-32ca-710d-d25d-7d531215ac09",
  "kind": "theorem",
  "lexical_name": "hasEigenvalue_of_hasGeneralizedEigenvalue",
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
  "slug": "haseigenvalue-of-hasgeneralizedeigenvalue--093c020968d68f0927da7ea5",
  "source": {
    "blob": "ac57b8661000f2da4445779737b9c044bb1a47fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 361,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:093c020968d68f0927da7ea57e245b3389ff5d678c1bf0331291f4f0a5022940",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efb88d83-32ca-710d-d25d-7d531215ac09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasEigenvalue_of_hasGeneralizedEigenvalue {f : End R M} {μ : R} {k : ℕ}
    (hμ : f.HasGeneralizedEigenvalue μ k) : f.HasEigenvalue μ := by
  intro contra; apply hμ
  erw [LinearMap.ker_eq_bot] at contra ⊢; rw [LinearMap.coe_pow]
  exact Function.Injective.iterate contra k
#align module.End.has_eigenvalue_of_has_generalized_eigenvalue Module.End.hasEigenvalue_of_hasGeneralizedEigenvalue

/-- Generalized eigenvalues are actually just eigenvalues. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac57b8661000f2da4445779737b9c044bb1a47fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
