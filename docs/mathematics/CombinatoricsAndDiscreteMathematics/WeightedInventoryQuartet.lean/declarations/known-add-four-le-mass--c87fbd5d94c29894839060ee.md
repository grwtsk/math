# known_add_four_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bb8e7ac-a9f9-cc6b-4481-9c9c7f2bbe33",
  "kind": "theorem",
  "lexical_name": "known_add_four_le_mass",
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
  "slug": "known-add-four-le-mass--c87fbd5d94c29894839060ee",
  "source": {
    "blob": "6080ba65517b3233c74e9d5ba38a73090c6c259f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 43,
    "path": "GRWTSK/Combinatorics/WeightedInventoryQuartet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87fbd5d94c29894839060eeeecfc58df234e8ebfca7f8c9cb5706e73c1d93f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedInventoryQuartet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bb8e7ac-a9f9-cc6b-4481-9c9c7f2bbe33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem known_add_four_le_mass (source known : Finset α) (weight : α → ℕ)
    (knownSubset : known ⊆ source) (a b c d : α)
    (ha : a ∈ source) (hb : b ∈ source) (hc : c ∈ source) (hd : d ∈ source)
    (na : a ∉ known) (nb : b ∉ known) (nc : c ∉ known) (nd : d ∉ known)
    (ab : a ≠ b) (ac : a ≠ c) (ad : a ≠ d)
    (bc : b ≠ c) (bd : b ≠ d) (cd : c ≠ d) :
    mass known weight + weight a + weight b + weight c + weight d ≤ mass source weight := by
  have subset : ({a, b, c, d} : Finset α) ⊆ source := by
    intro x hx
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl | rfl | rfl
    · exact ha
    · exact hb
    · exact hc
    · exact hd
  have separate : Disjoint known ({a, b, c, d} : Finset α) := by
    apply Finset.disjoint_left.mpr
    intro x hx hq
    simp only [Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact na hx
    · exact nb hx
    · exact nc hx
    · exact nd hx
  have bound := known_add_missing_le_mass source known {a, b, c, d} weight
    knownSubset subset separate
  simpa [mass, ab, ac, ad, bc, bd, cd, add_assoc] using bound

/-- Strictness is sharp at the finite positive-mass level. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedInventoryQuartet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/WeightedInventoryQuartet.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6080ba65517b3233c74e9d5ba38a73090c6c259f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
