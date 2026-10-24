# lifted_column_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1807072-7edc-14aa-8a47-304f016ba579",
  "kind": "theorem",
  "lexical_name": "lifted_column_factorization",
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
  "slug": "lifted-column-factorization--f95e0b504dd2d6f9b9d40342",
  "source": {
    "blob": "834401db97003240a9690a2043e470749b8f65c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/Analysis/ErrorBounds/QuadraticGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f95e0b504dd2d6f9b9d4034236582cb73bff13a45d95b50bf3feb17adb1e59cb",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/QuadraticGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1807072-7edc-14aa-8a47-304f016ba579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lifted_column_factorization (weight : ι → ℝ) (A : ι → ι → ℝ)
    (q : ι × ι) :
    (∑ p, pairWeight weight p * |liftedGain A p q|) =
      (∑ i, weight i * |A i q.1|) * (∑ j, weight j * |A j q.2|) := by
  calc
    (∑ p, pairWeight weight p * |liftedGain A p q|) =
        ∑ p : ι × ι, (weight p.1 * |A p.1 q.1|) *
          (weight p.2 * |A p.2 q.2|) := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [pairWeight, liftedGain, abs_mul]
      ring
    _ = _ := sum_pair_mul (fun i => weight i * |A i q.1|)
      (fun j => weight j * |A j q.2|)

/-- A feature gain r supplies a pair-coordinate gain r*r with product weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/QuadraticGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/QuadraticGramResidual.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834401db97003240a9690a2043e470749b8f65c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
