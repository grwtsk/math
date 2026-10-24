# differentialCount_eq_full_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:948ba952-d65a-ed71-4dee-43365e6b3fbb",
  "kind": "theorem",
  "lexical_name": "differentialCount_eq_full_iff",
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
  "slug": "differentialcount-eq-full-iff--fe3d865e09ac5b582db52653",
  "source": {
    "blob": "0c62670a0e266d294965786ca7d2de323574d336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe3d865e09ac5b582db52653556c0bcb9d2d0963ea16a5d9134a217612d9f7a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:948ba952-d65a-ed71-4dee-43365e6b3fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentialCount_eq_full_iff {n : Nat} (H : Bits n → Bits n)
    (δ γ : Bits n) :
    differentialCount H δ γ = 2 ^ n ↔
      ∀ x, derivative H δ x = γ := by
  classical
  rw [differentialCount, ← card_bits n, ← Finset.card_univ]
  simpa using
    (Finset.card_filter_eq_iff
      (s := (Finset.univ : Finset (Bits n)))
      (p := fun x => derivative H δ x = γ))

/-- Probability one is exactly the deterministic differential corridor condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62670a0e266d294965786ca7d2de323574d336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
