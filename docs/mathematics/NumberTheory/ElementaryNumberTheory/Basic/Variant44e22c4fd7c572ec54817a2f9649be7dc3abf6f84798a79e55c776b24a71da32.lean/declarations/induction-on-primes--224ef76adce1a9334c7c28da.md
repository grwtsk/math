# induction_on_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb27e15a-abf5-ca7d-8a2b-b61ce408bbfe",
  "kind": "theorem",
  "lexical_name": "induction_on_primes",
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
  "slug": "induction-on-primes--224ef76adce1a9334c7c28da",
  "source": {
    "blob": "089ad960e973126618ed8ba9d3fe31ee301744e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 359,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:224ef76adce1a9334c7c28da8e9872cb0cb115d1ca79b146fd4ce4019e59bd34",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb27e15a-abf5-ca7d-8a2b-b61ce408bbfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_primes {P : ℕ → Prop} (h₀ : P 0) (h₁ : P 1)
    (h : ∀ p a : ℕ, p.Prime → P a → P (p * a)) (n : ℕ) : P n := by
  apply UniqueFactorizationMonoid.induction_on_prime
  · exact h₀
  · intro n h
    rw [Nat.isUnit_iff.1 h]
    exact h₁
  · intro a p _ hp ha
    exact h p a hp.nat_prime ha
#align induction_on_primes induction_on_primes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089ad960e973126618ed8ba9d3fe31ee301744e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
