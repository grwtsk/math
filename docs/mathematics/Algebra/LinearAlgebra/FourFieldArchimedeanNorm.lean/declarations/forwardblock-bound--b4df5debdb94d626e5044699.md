# forwardBlock_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3042a593-772a-0611-8608-9e550872d511",
  "kind": "theorem",
  "lexical_name": "forwardBlock_bound",
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
  "slug": "forwardblock-bound--b4df5debdb94d626e5044699",
  "source": {
    "blob": "d25b3131dae04a7c08208227357180db777462ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Analysis/LinearAlgebra/FourFieldArchimedeanNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4df5debdb94d626e504469935bb6105e0a5a1b0327136aa2602e17dd6b30626",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3042a593-772a-0611-8608-9e550872d511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardBlock_bound (w : ℚ) (q : Fin 4 → ℚ) (M : ℚ)
    (hM : 0 ≤ M) (hq : ∀ j, |q j| ≤ M) (j : Fin 4) :
    |forwardBlock w q j| ≤ 5*|w|*M := by
  have he : forwardBlock w q j =
      w * (![3*q 0,q 1,q 1+4*q 2,q 1+4*q 3] : Fin 4 → ℚ) j := by
    fin_cases j <;> simp [forwardBlock] <;> ring
  rw [he, abs_mul]
  calc
    _ ≤ |w| * (5*M) :=
      mul_le_mul_of_nonneg_left (chart_row_bound q M hM hq j) (abs_nonneg w)
    _ = 5*|w|*M := by ring

/-- With an integer nonzero weight, the unframed inverse is already nonexpanding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LinearAlgebra/FourFieldArchimedeanNorm.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d25b3131dae04a7c08208227357180db777462ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
