# exists_sq_eq_neg_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3250e8e-99a4-d15c-f6af-f813d3a9df79",
  "kind": "theorem",
  "lexical_name": "exists_sq_eq_neg_two_iff",
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
  "slug": "exists-sq-eq-neg-two-iff--955b9ae3addcfb54d82d6610",
  "source": {
    "blob": "244d3435c1d70956d8fe3257bd7b102edc771ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 97,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:955b9ae3addcfb54d82d66104352b3fa2249d53611e43de80796a3467c5147f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3250e8e-99a4-d15c-f6af-f813d3a9df79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sq_eq_neg_two_iff : IsSquare (-2 : ZMod p) ↔ p % 8 = 1 ∨ p % 8 = 3 := by
  rw [FiniteField.isSquare_neg_two_iff, card p]
  have h₁ := Prime.mod_two_eq_one_iff_ne_two.mpr hp
  rw [← mod_mod_of_dvd p (by norm_num : 2 ∣ 8)] at h₁
  have h₂ := mod_lt p (by norm_num : 0 < 8)
  revert h₂ h₁
  generalize p % 8 = m; clear! p
  intros; interval_cases m <;> simp_all -- Porting note: was `decide!`
#align zmod.exists_sq_eq_neg_two_iff ZMod.exists_sq_eq_neg_two_iff

end ZMod

end Values

section Reciprocity

/-!
### The Law of Quadratic Reciprocity

See `jacobiSym.quadratic_reciprocity` and variants for a version of Quadratic Reciprocity
for the Jacobi symbol.
-/


variable {p q : ℕ} [Fact p.Prime] [Fact q.Prime]

namespace legendreSym

open ZMod

/-- **The Law of Quadratic Reciprocity**: if `p` and `q` are distinct odd primes, then
`(q / p) * (p / q) = (-1)^((p-1)(q-1)/4)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `244d3435c1d70956d8fe3257bd7b102edc771ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
