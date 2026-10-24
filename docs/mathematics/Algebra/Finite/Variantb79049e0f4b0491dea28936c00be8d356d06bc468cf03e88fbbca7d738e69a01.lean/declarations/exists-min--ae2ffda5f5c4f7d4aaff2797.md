# exists_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f3ef098-9231-70f3-2d2e-c9989cef1858",
  "kind": "theorem",
  "lexical_name": "exists_min",
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
  "slug": "exists-min--ae2ffda5f5c4f7d4aaff2797",
  "source": {
    "blob": "d5170835842e16cc348096105a300009dd044fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 125,
    "path": "GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae2ffda5f5c4f7d4aaff2797a96c90be4263ad2eecc66bc01f31990a3820deae",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f3ef098-9231-70f3-2d2e-c9989cef1858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_min (I : (Ideal S)⁰) :
    ∃ b ∈ (I : Ideal S),
      b ≠ 0 ∧ ∀ c ∈ (I : Ideal S), abv (Algebra.norm R c) < abv (Algebra.norm R b) → c =
      (0 : S) := by
  obtain ⟨_, ⟨b, b_mem, b_ne_zero, rfl⟩, min⟩ := @Int.exists_least_of_bdd
      (fun a => ∃ b ∈ (I : Ideal S), b ≠ (0 : S) ∧ abv (Algebra.norm R b) = a)
    (by
      use 0
      rintro _ ⟨b, _, _, rfl⟩
      apply abv.nonneg)
    (by
      obtain ⟨b, b_mem, b_ne_zero⟩ := (I : Ideal S).ne_bot_iff.mp (nonZeroDivisors.coe_ne_zero I)
      exact ⟨_, ⟨b, b_mem, b_ne_zero, rfl⟩⟩)
  refine ⟨b, b_mem, b_ne_zero, ?_⟩
  intro c hc lt
  contrapose! lt with c_ne_zero
  exact min _ ⟨c, hc, c_ne_zero, rfl⟩

section IsAdmissible

variable {abv}
variable (adm : abv.IsAdmissible)

/-- If we have a large enough set of elements in `R^ι`, then there will be a pair
whose remainders are close together. We'll show that all sets of cardinality
at least `cardM bS adm` elements satisfy this condition.

The value of `cardM` is not at all optimal: for specific choices of `R`,
the minimum cardinality can be exponentially smaller.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5170835842e16cc348096105a300009dd044fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
