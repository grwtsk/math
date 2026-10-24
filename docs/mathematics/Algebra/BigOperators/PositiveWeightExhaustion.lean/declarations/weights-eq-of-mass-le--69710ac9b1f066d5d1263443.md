# weights_eq_of_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab48589b-dce3-ac65-8edc-02607f4fd12c",
  "kind": "theorem",
  "lexical_name": "weights_eq_of_mass_le",
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
  "slug": "weights-eq-of-mass-le--69710ac9b1f066d5d1263443",
  "source": {
    "blob": "1d0201a9dfcb270949d89851ef8b3f27148c8b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/Algebra/BigOperators/PositiveWeightExhaustion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69710ac9b1f066d5d1263443c4e39be26c36564705febd9710a8eb0bf65036d8",
  "verification": {
    "reference": "docs/verification/Algebra/BigOperators/PositiveWeightExhaustion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab48589b-dce3-ac65-8edc-02607f4fd12c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weights_eq_of_mass_le {ι κ : Type*} [Fintype ι] [Fintype κ]
    (f : ι → κ) (hf : Function.Injective f) (m : ι → ℕ) (w : κ → ℕ)
    (hpos : ∀ u, 0 < w u) (hlower : ∀ i, m i ≤ w (f i))
    (hcount : (∑ u, w u) ≤ ∑ i, m i) : ∀ i, w (f i) = m i := by
  classical
  have hbij : Function.Bijective f :=
    ⟨hf, surjective_of_mass_le f hf m w hpos hlower hcount⟩
  have hsum : (∑ i, w (f i)) = ∑ u, w u :=
    (Equiv.ofBijective f hbij).sum_comp w
  intro i
  by_contra hi
  have hlt : m i < w (f i) := by have := hlower i; omega
  have hstrict : (∑ j, m j) < ∑ j, w (f j) :=
    Finset.sum_lt_sum (fun j _ => hlower j) ⟨i, Finset.mem_univ i, hlt⟩
  rw [hsum] at hstrict
  omega

/-- The exact correspondence is constructed from the preceding finite criteria. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BigOperators/PositiveWeightExhaustion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BigOperators/PositiveWeightExhaustion.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0201a9dfcb270949d89851ef8b3f27148c8b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
