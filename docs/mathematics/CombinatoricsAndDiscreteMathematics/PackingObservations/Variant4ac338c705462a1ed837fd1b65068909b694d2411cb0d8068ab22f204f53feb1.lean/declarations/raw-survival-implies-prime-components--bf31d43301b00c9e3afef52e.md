# raw_survival_implies_prime_components

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbf7fe66-5d99-71a5-204b-52edd4d77be8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa9af2ce-c579-37a4-51c8-c2ba6afc4d1d",
  "kind": "theorem",
  "lexical_name": "raw_survival_implies_prime_components",
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
  "slug": "raw-survival-implies-prime-components--bf31d43301b00c9e3afef52e",
  "source": {
    "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 367,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf31d43301b00c9e3afef52ed2645202983b353cbc7b5208f0f001dd68f7f4ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa9af2ce-c579-37a4-51c8-c2ba6afc4d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_survival_implies_prime_components (P : RawPacking) (X : ℕ) (n : ℤ)
    (hrange : (ProperPacking.mk P.y P.r X P.pattern).InRange n)
    (hcover : Nat.sqrt X ≤ P.y) (hdepth : P.r ≠ 0) (hs : P.Survives n) :
    ∀ h ∈ P.pattern, ((n + h).toNat).Prime := by
  apply ((bounded_proper_classification
    (ProperPacking.mk P.y P.r X P.pattern) n hcover hdepth).mp ?_).2
  refine ⟨hrange, Or.inr ?_⟩
  intro p hp hprime h hh hdiv
  have hnonneg : 0 ≤ n + h := (by norm_num : (0 : ℤ) ≤ 2).trans (hrange h hh).1
  have hdint : (p : ℤ) ∣ n + h := by
    rw [← Int.toNat_of_nonneg hnonneg]
    exact Int.ofNat_dvd.mpr hdiv
  exact ((hs.resolve_left hdepth) p hp hprime h hh hdint).elim

/-- The finite proper-divisor classifier preserves both smallest primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bdedd3a4604fa32406d0c7c2071ccd89928165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
