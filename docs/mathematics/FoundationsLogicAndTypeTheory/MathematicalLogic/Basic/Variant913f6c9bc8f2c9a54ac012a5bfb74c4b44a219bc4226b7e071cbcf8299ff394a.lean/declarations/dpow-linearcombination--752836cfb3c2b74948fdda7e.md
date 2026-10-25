# dpow_linearCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f662fdd-1ca4-bcd3-d880-e71518fbe540",
  "kind": "theorem",
  "lexical_name": "dpow_linearCombination",
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
  "slug": "dpow-linearcombination--752836cfb3c2b74948fdda7e",
  "source": {
    "blob": "551c7265033d2e1ede0cc884876f3b114f5e71c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:752836cfb3c2b74948fdda7e54216d3ec31b343fa45d834ba3bd1ca0f6dc8f44",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f662fdd-1ca4-bcd3-d880-e71518fbe540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_linearCombination {S : Type*} [CommSemiring S] [Algebra A S] {J : Ideal S}
    (hJ : DividedPowers J) {b : ι → S} {x : ι →₀ A} (hx : ∀ i ∈ x.support, b i ∈ J) {n : ℕ} :
    hJ.dpow n (x.sum fun i r ↦ r • (b i)) =
      ∑ k ∈ x.support.sym n,
        x.prod fun i r ↦ r ^ (Multiset.count i k) • hJ.dpow (Multiset.count i k) (b i) := by
  rw [Finsupp.sum, hJ.dpow_sum (fun i hi ↦ Submodule.smul_of_tower_mem J _ (hx i hi))]
  apply Finset.sum_congr rfl
  intros
  apply Finset.prod_congr rfl
  intro i hi
  rw [Algebra.smul_def, hJ.dpow_mul (hx i hi), ← map_pow, ← Algebra.smul_def]

/-- Given a nonempty `s : Finset ι` and a family `r : ι → R` such that `r i ∈ I` for all `i ∈ S`,
  one has `hI.dpow n (∏ i ∈ s, r i) = n.factorial ^ (s.card - 1) • (∏ i ∈ s, hI.dpow n (r i))`
  for all `n : ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551c7265033d2e1ede0cc884876f3b114f5e71c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
