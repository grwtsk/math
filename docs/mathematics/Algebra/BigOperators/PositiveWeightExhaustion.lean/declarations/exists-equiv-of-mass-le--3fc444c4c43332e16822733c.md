# exists_equiv_of_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2110e70a-74e0-5e6a-935b-3d622c467ed1",
  "kind": "theorem",
  "lexical_name": "exists_equiv_of_mass_le",
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
  "slug": "exists-equiv-of-mass-le--3fc444c4c43332e16822733c",
  "source": {
    "blob": "1d0201a9dfcb270949d89851ef8b3f27148c8b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/Algebra/BigOperators/PositiveWeightExhaustion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc444c4c43332e16822733cbfc0814c4727e816fde58a508f336138604bfcb6",
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

Occurrence: `result:2110e70a-74e0-5e6a-935b-3d622c467ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_equiv_of_mass_le {ι κ : Type*} [Fintype ι] [Fintype κ]
    (f : ι → κ) (hf : Function.Injective f) (m : ι → ℕ) (w : κ → ℕ)
    (hpos : ∀ u, 0 < w u) (hlower : ∀ i, m i ≤ w (f i))
    (hcount : (∑ u, w u) ≤ ∑ i, m i) :
    ∃ e : ι ≃ κ, (∀ i, e i = f i) ∧ ∀ i, w (e i) = m i := by
  classical
  let e := Equiv.ofBijective f
    ⟨hf, surjective_of_mass_le f hf m w hpos hlower hcount⟩
  exact ⟨e, fun _ => rfl, weights_eq_of_mass_le f hf m w hpos hlower hcount⟩

end GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BigOperators/PositiveWeightExhaustion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BigOperators/PositiveWeightExhaustion.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0201a9dfcb270949d89851ef8b3f27148c8b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
