# scalarFeatureKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bee819b05ea39a3f3144f9bc1516fb92690a64c497ac22d3692cc6589d49928",
  "kind": "def",
  "lexical_name": "scalarFeatureKernel",
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
  "slug": "scalarfeaturekernel--08b120ee7fca2a4c57e2cd10",
  "source": {
    "blob": "a1393123bdbfbd949d7c7058347427478b595a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 24,
    "path": "GRWTSK/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08b120ee7fca2a4c57e2cd108650bd28df65b830f9f8332cb5470116382997bd",
  "verification": {
    "reference": "docs/verification/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bee819b05ea39a3f3144f9bc1516fb92690a64c497ac22d3692cc6589d49928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scalarFeatureKernel (feature : Index → ℂ) : PositiveKernel Index where
  matrix i j := star (feature i) * feature j
  positiveSemidefinite := by
    constructor
    · ext i j
      simp [mul_comm]
    · intro coefficients
      let value := coefficients.sum fun i coefficient =>
        coefficient * feature i
      have factorization :
          coefficients.sum (fun i coefficient =>
            coefficients.sum (fun j other =>
              star coefficient * (star (feature i) * feature j) * other)) =
            star value * value := by
        calc
          _ = coefficients.sum (fun i coefficient =>
                star (coefficient * feature i) * value) := by
            apply Finsupp.sum_congr
            intro i _
            rw [Finsupp.mul_sum]
            apply Finsupp.sum_congr
            intro j _
            rw [star_mul]
            ring
          _ = star value * value := by
            unfold value
            rw [star_finsuppSum, Finsupp.sum_mul]
            apply Finsupp.sum_congr
            intro _ _
            rfl
      rw [factorization]
      simpa using star_left_conjugate_nonneg
        (show (0 : ℂ) ≤ 1 by simp) value

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1393123bdbfbd949d7c7058347427478b595a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
