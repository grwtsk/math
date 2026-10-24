# polynomialKernel_mixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b94f7596-0ad2-c098-4950-556f10d01d75",
  "kind": "theorem",
  "lexical_name": "polynomialKernel_mixed",
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
  "slug": "polynomialkernel-mixed--40801e87f3930a2b1b506fcd",
  "source": {
    "blob": "2adacbe11875d3e1ac1e540fc1412ce79b82d47e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40801e87f3930a2b1b506fcd1a9409a7e505ce1a7e19b7bf831279889d386e55",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94f7596-0ad2-c098-4950-556f10d01d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomialKernel_mixed
    (z w : ℂ) :
    polynomialKernel (mixedPolynomial z) w =
      ∑ k ∈ Finset.range 9,
        sCoeff k * z ^ k * J k w := by
  unfold polynomialKernel
  apply Finset.sum_congr rfl
  intro k hk
  have hk8 : k ≤ 8 :=
    Nat.le_of_lt_succ (Finset.mem_range.mp hk)
  rw [mixedPolynomial_coeff z k hk8]

/-- The compact polynomial representation is definitionally the exact
coefficient/sign formula required in equation (20). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2adacbe11875d3e1ac1e540fc1412ce79b82d47e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
