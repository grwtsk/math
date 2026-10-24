# power_basis_eq_card_paths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0caf8fb-f923-13c9-8f0e-bb60a640a506",
  "kind": "lemma",
  "lexical_name": "power_basis_eq_card_paths",
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
  "slug": "power-basis-eq-card-paths--cc04df0bd4f16844fa581d65",
  "source": {
    "blob": "0f11954b44199e72e7c5feb858cfede600332d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 188,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc04df0bd4f16844fa581d6598ccee71426ce303e7761ec00abb305dcd3e3717",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0caf8fb-f923-13c9-8f0e-bb60a640a506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma power_basis_eq_card_paths (n h : ℕ) :
    ((Jfree (R := R)) ^ n) (basisVector 0) h = ((paths n h).card : R) := by
  induction n generalizing h with
  | zero => by_cases H : h = 0 <;> simp [basisVector, paths, H]
  | succ n ih =>
    rw [pow_succ']
    change Jfree ((Jfree ^ n) (basisVector 0)) h = _
    cases h with
    | zero => rw [Jfree_apply_zero, ih, card_paths_succ_zero]
    | succ h => rw [Jfree_apply_succ, ih, ih, card_paths_succ_succ, Nat.cast_add]

/-- Exact all-scale even cyclic moments of the free half-line Jacobi operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f11954b44199e72e7c5feb858cfede600332d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
