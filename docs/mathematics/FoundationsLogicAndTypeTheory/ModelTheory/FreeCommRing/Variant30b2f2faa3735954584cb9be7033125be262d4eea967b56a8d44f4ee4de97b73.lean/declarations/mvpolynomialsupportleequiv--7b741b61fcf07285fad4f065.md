# mvPolynomialSupportLEEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d04f07201da3691fc4c2e116ae561b6fe02caf2db574f3a896de4dda1df38f76",
  "kind": "def",
  "lexical_name": "mvPolynomialSupportLEEquiv",
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
  "slug": "mvpolynomialsupportleequiv--7b741b61fcf07285fad4f065",
  "source": {
    "blob": "e8a4b12e6986fc78c98b9e7793fae926960cb82d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b741b61fcf07285fad4f06594eaed7dadf97a8b37cae86292e6e325ec4c810c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d04f07201da3691fc4c2e116ae561b6fe02caf2db574f3a896de4dda1df38f76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mvPolynomialSupportLEEquiv
    [DecidableEq κ] [CommRing R] [DecidableEq R]
    (monoms : ι → Finset (κ →₀ ℕ)) :
    { p : ι → MvPolynomial κ R // ∀ i, (p i).support ⊆ monoms i } ≃
      ((Σ i, monoms i) → R) :=
  { toFun := fun p i => (p.1 i.1).coeff i.2,
    invFun := fun p => ⟨fun i =>
      { toFun := fun m => if hm : m ∈ monoms i then p ⟨i, ⟨m, hm⟩⟩ else 0
        support := {m ∈ monoms i | ∃ hm : m ∈ monoms i, p ⟨i, ⟨m, hm⟩⟩ ≠ 0},
        mem_support_toFun := by simp },
      fun i => Finset.filter_subset _ _⟩,
    left_inv := fun p => by
      ext i m
      simp only [coeff, ne_eq, exists_prop, dite_eq_ite, Finsupp.coe_mk, ite_eq_left_iff]
      intro hm
      have : m ∉ (p.1 i).support := fun h => hm (p.2 i h)
      simpa [coeff, eq_comm, MvPolynomial.mem_support_iff] using this
    right_inv := fun p => by ext; simp [coeff] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8a4b12e6986fc78c98b9e7793fae926960cb82d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
