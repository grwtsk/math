# derivative_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fc938d8-147f-4c4f-ca14-b5da4d1bd7a6",
  "kind": "theorem",
  "lexical_name": "derivative_pow_succ",
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
  "slug": "derivative-pow-succ--94a7ae7967609b1b0d920f4d",
  "source": {
    "blob": "19329cdbd482713d1e91d707fcaacd08a26c28c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 457,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94a7ae7967609b1b0d920f4d074268fa9337d075ebfe48583e7d7489288f92f8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fc938d8-147f-4c4f-ca14-b5da4d1bd7a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_pow_succ (p : R[X]) (n : ℕ) :
    derivative (p ^ (n + 1)) = C (n + 1 : R) * p ^ n * derivative p :=
  Nat.recOn n (by simp) fun n ih => by
    rw [pow_succ, derivative_mul, ih, Nat.add_one, mul_right_comm, C_add,
      add_mul, add_mul, pow_succ, ← mul_assoc, C_1, one_mul]; simp [add_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19329cdbd482713d1e91d707fcaacd08a26c28c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
