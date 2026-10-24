# scalarFeatureKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e1964dec25289df24e1d13083eef68d69dc3a011d368860faaeaef3153bd874",
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
  "slug": "scalarfeaturekernel--097657cb5f1856136ee2d59d",
  "source": {
    "blob": "384ee947414c177856f2e1e47462588edfd047d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:097657cb5f1856136ee2d59d0eb569f9969827d0212dffefdd2e2443c12ef4ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e1964dec25289df24e1d13083eef68d69dc3a011d368860faaeaef3153bd874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–59.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `384ee947414c177856f2e1e47462588edfd047d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
