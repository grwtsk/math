# ACF_models_genericPolyMapSurjOnOfInjOn_of_prime_or_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:002d1e8b-650a-b8ec-9a19-d4355b442fa2",
  "kind": "theorem",
  "lexical_name": "ACF_models_genericPolyMapSurjOnOfInjOn_of_prime_or_zero",
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
  "slug": "acf-models-genericpolymapsurjonofinjon-of-prime-or-zero--908bd9d4da98f67b1bc53f5f",
  "source": {
    "blob": "d026e6f7b6cb1eae2235db811c7d012d9add6ec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908bd9d4da98f67b1bc53f5f119663e7e7d9a0035cd8e06736a428daa44cae2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:002d1e8b-650a-b8ec-9a19-d4355b442fa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ACF_models_genericPolyMapSurjOnOfInjOn_of_prime_or_zero
    [Finite ι] {p : ℕ} (hp : p.Prime ∨ p = 0)
    (φ : ring.Formula (α ⊕ ι)) (mons : ι → Finset (ι →₀ ℕ)) :
    Theory.ACF p ⊨ᵇ genericPolyMapSurjOnOfInjOn φ mons := by
  rcases hp with hp | rfl
  · exact ACF_models_genericPolyMapSurjOnOfInjOn_of_prime hp φ mons
  · rw [ACF_zero_realize_iff_infinite_ACF_prime_realize]
    convert Set.infinite_univ (α := Nat.Primes)
    rw [Set.eq_univ_iff_forall]
    intro ⟨p, hp⟩
    exact ACF_models_genericPolyMapSurjOnOfInjOn_of_prime hp φ mons

end FirstOrder

open FirstOrder Language Field Ring MvPolynomial

variable {K ι : Type*} [Field K] [IsAlgClosed K] [Finite ι]

/-- A slight generalization of the **Ax-Grothendieck** theorem

If `K` is an algebraically closed field, `ι` is a finite type, and `S` is a definable subset of
`ι → K`, then any injective polynomial map `S → S`  is also surjective on `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d026e6f7b6cb1eae2235db811c7d012d9add6ec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
