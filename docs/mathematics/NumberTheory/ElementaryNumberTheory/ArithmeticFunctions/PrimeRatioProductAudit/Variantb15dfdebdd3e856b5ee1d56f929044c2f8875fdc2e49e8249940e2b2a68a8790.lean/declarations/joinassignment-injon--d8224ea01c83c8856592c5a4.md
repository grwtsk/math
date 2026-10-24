# joinAssignment_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc43bdcc-f617-d7e3-968c-b18ce1a8130b",
  "kind": "theorem",
  "lexical_name": "joinAssignment_injOn",
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
  "slug": "joinassignment-injon--d8224ea01c83c8856592c5a4",
  "source": {
    "blob": "5a8e5cacffbe9b1cd7c8d6ca2348166f65b85f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8224ea01c83c8856592c5a4dd291fa6a7663b5c1466349bb54796ea81a744ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc43bdcc-f617-d7e3-968c-b18ce1a8130b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joinAssignment_injOn (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    Set.InjOn joinAssignment (assignments P) := by
  intro s hs t ht he
  have h1 := congrArg (fun p : ℕ × ℕ ↦ p.1.primeFactors) he
  have h2 := congrArg (fun p : ℕ × ℕ ↦ p.2.primeFactors) he
  rw [(assignment_primeFactors P hP s hs).1, (assignment_primeFactors P hP t ht).1] at h1
  rw [(assignment_primeFactors P hP s hs).2, (assignment_primeFactors P hP t ht).2] at h2
  cases s
  cases t
  simp only [Sigma.mk.injEq]
  exact ⟨h1, heq_of_eq h2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8e5cacffbe9b1cd7c8d6ca2348166f65b85f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
