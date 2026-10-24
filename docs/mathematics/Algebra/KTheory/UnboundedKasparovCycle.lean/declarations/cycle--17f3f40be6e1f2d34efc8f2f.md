# Cycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99fb076fa934346d46898ac9118aa1130e786fbdeb546fcb94aab30ff1fe8eb5",
  "kind": "structure",
  "lexical_name": "Cycle",
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
  "slug": "cycle--17f3f40be6e1f2d34efc8f2f",
  "source": {
    "blob": "4d831fd7d9f423f7b6b2f5584ef71e0768de03f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 107,
    "path": "GRWTSK/Algebra/KTheory/UnboundedKasparovCycle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17f3f40be6e1f2d34efc8f2f9f2ffcbbdc1e81f6989c458bcbed48f45f2f90fb",
  "verification": {
    "reference": "docs/verification/Algebra/KTheory/UnboundedKasparovCycle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99fb076fa934346d46898ac9118aa1130e786fbdeb546fcb94aab30ff1fe8eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Cycle (A : Type u) [Semiring A]
    (H : Type v) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  representation : A →+* (H →L[ℂ] H)
  operator : UnboundedOperator ℂ H
  parity : Bool
  denseDomain : Dense (operator.domain : Set H)
  closedGraph : IsClosed (graphSet operator)
  symmetric : UnboundedOperator.IsComplexSymmetric operator
  domainInvariant : ∀ a (x : operator.domain), representation a x ∈ operator.domain
  boundedCommutator : A → (H →L[ℂ] H)
  boundedCommutator_agrees : ∀ a (x : operator.domain),
    operator.apply ⟨representation a x, domainInvariant a x⟩ -
        representation a (operator.apply x) =
      boundedCommutator a x
  resolventParameter : ℂ
  compactResolvent : CompactResolventWitness operator resolventParameter

variable [CompleteSpace H]

namespace Cycle

/-- The represented commutator agrees with the selected bounded extension on the exact domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KTheory/UnboundedKasparovCycle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KTheory/UnboundedKasparovCycle.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d831fd7d9f423f7b6b2f5584ef71e0768de03f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
