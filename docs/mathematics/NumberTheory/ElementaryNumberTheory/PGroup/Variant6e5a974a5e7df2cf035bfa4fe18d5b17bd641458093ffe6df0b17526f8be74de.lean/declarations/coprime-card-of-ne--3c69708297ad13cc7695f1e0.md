# coprime_card_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75fd8fdd-3fc1-87dd-5fe9-8ff5727a8aac",
  "kind": "theorem",
  "lexical_name": "coprime_card_of_ne",
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
  "slug": "coprime-card-of-ne--3c69708297ad13cc7695f1e0",
  "source": {
    "blob": "fd3698d4f1049d776ffb2485c0a03a9ee8e17956",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 299,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c69708297ad13cc7695f1e091584c66cd2ef6bff3e18b94a7937ffda34029f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75fd8fdd-3fc1-87dd-5fe9-8ff5727a8aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_card_of_ne {G₂ : Type*} [Group G₂] (p₁ p₂ : ℕ) [hp₁ : Fact p₁.Prime]
    [hp₂ : Fact p₂.Prime] (hne : p₁ ≠ p₂) (H₁ : Subgroup G) (H₂ : Subgroup G₂) [Finite H₁]
    [Finite H₂] (hH₁ : IsPGroup p₁ H₁) (hH₂ : IsPGroup p₂ H₂) :
    Nat.Coprime (Nat.card H₁) (Nat.card H₂) := by
  obtain ⟨n₁, heq₁⟩ := iff_card.mp hH₁; rw [heq₁]; clear heq₁
  obtain ⟨n₂, heq₂⟩ := iff_card.mp hH₂; rw [heq₂]; clear heq₂
  exact Nat.coprime_pow_primes _ _ hp₁.elim hp₂.elim hne

/-- p-groups with different p are disjoint -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3698d4f1049d776ffb2485c0a03a9ee8e17956` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
