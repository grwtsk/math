# unitaryTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:964a447ef35e87ffb87a2ca798d411474f1f06fb31bb7b26730db52960305a0e",
  "kind": "def",
  "lexical_name": "unitaryTheory",
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
  "slug": "unitarytheory--384481368b29a8e0eb9875ca",
  "source": {
    "blob": "203fd487e520af61d9595cb8ca457bb7f67038e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 28,
    "path": "GRWTSK/Algebra/KTheory/FiniteFredholmBivariant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:384481368b29a8e0eb9875ca3a3fa2efcbf2010ec5372e93adcd8ee738650ff1",
  "verification": {
    "reference": "docs/verification/Algebra/KTheory/FiniteFredholmBivariant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:964a447ef35e87ffb87a2ca798d411474f1f06fb31bb7b26730db52960305a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitaryTheory (A : Type u) [Semiring A] (n : ℕ) :
    BivariantTheory (ExactCycle A n) where
  Corr X Y := UnitaryEquivalence X Y
  identity X := UnitaryEquivalence.refl X
  product P Q := UnitaryEquivalence.trans P Q
  identity_product := by
    intro X Y P
    ext
    simp [UnitaryEquivalence.trans, UnitaryEquivalence.refl]
  product_identity := by
    intro X Y P
    ext
    simp [UnitaryEquivalence.trans, UnitaryEquivalence.refl]
  product_assoc := by
    intro W X Y Z P Q R
    ext
    simp [UnitaryEquivalence.trans, Matrix.mul_assoc]

namespace UnitaryEquivalence

variable {A : Type u} [Semiring A] {n : ℕ}
variable {X Y : ExactCycle A n}

/-- Every concrete unitary equivalence is a two-sided equivalence in the finite
bivariant groupoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KTheory/FiniteFredholmBivariant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KTheory/FiniteFredholmBivariant.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203fd487e520af61d9595cb8ca457bb7f67038e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
