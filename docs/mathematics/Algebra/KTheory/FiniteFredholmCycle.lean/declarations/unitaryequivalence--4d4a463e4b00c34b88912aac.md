# UnitaryEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c346b86d4e92d2fa0187651e4d2c5f8c63ba5c779de4df1a2b50d3e0107df68",
  "kind": "structure",
  "lexical_name": "UnitaryEquivalence",
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
  "slug": "unitaryequivalence--4d4a463e4b00c34b88912aac",
  "source": {
    "blob": "cbeb329bb85b22e13a5c963165a5286c697e905e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/Algebra/KTheory/FiniteFredholmCycle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d4a463e4b00c34b88912aac91a4f2633422d592706cfe3b2131f705fc5395d8",
  "verification": {
    "reference": "docs/verification/Algebra/KTheory/FiniteFredholmCycle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c346b86d4e92d2fa0187651e4d2c5f8c63ba5c779de4df1a2b50d3e0107df68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UnitaryEquivalence
    {A : Type u} [Semiring A] {n : ℕ}
    (X Y : ExactCycle A n) where
  unitary : Matrix (Fin n) (Fin n) ℂ
  star_mul : unitaryᴴ * unitary = 1
  mul_star : unitary * unitaryᴴ = 1
  representation_intertwines :
    ∀ a, unitary * X.representation a = Y.representation a * unitary
  operator_intertwines : unitary * X.operator = Y.operator * unitary
  parity_eq : X.parity = Y.parity

namespace UnitaryEquivalence

variable {A : Type u} [Semiring A] {n : ℕ}
variable {X Y Z : ExactCycle A n}

/-- Identity unitary cycle equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KTheory/FiniteFredholmCycle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KTheory/FiniteFredholmCycle.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbeb329bb85b22e13a5c963165a5286c697e905e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
