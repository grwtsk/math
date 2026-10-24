# rectangular_column_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4313cf0b-2fd4-0e3a-24f5-8da134220b31",
  "kind": "theorem",
  "lexical_name": "rectangular_column_factorization",
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
  "slug": "rectangular-column-factorization--25a80c4136dd76911f32156a",
  "source": {
    "blob": "affebe081e0ae6b3697a7a38ff4a97babb758edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 137,
    "path": "GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a80c4136dd76911f32156ab500a7a7600d047d7b194c0824c05ccda6acc724",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4313cf0b-2fd4-0e3a-24f5-8da134220b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangular_column_factorization [Fintype ι] (nextWeight : τ → ℝ) (A : τ → ι → ℝ)
    (q : ι × ι) :
    (∑ p, pairWeight nextWeight p * |rectangularLift A p q|) =
      (∑ i, nextWeight i * |A i q.1|) * (∑ j, nextWeight j * |A j q.2|) := by
  calc
    _ = ∑ p : τ × τ, (nextWeight p.1 * |A p.1 q.1|) *
        (nextWeight p.2 * |A p.2 q.2|) := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [pairWeight, rectangularLift, abs_mul]
      ring
    _ = _ := sum_pair_mul (fun i => nextWeight i * |A i q.1|)
      (fun j => nextWeight j * |A j q.2|)

/-- Rectangular feature contraction gives pair gain r^2 across the two actual weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `affebe081e0ae6b3697a7a38ff4a97babb758edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
