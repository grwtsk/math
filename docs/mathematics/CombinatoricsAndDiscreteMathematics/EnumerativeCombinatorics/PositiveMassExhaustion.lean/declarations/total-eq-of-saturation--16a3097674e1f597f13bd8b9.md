# total_eq_of_saturation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7437042-e8b4-fabb-0120-b261bf27fe44",
  "kind": "theorem",
  "lexical_name": "total_eq_of_saturation",
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
  "slug": "total-eq-of-saturation--16a3097674e1f597f13bd8b9",
  "source": {
    "blob": "7d17b523b57ddd2359bf6c4fa98e9eebc3fc0fcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Combinatorics/Enumerative/PositiveMassExhaustion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a3097674e1f597f13bd8b9a00cfa77e1ff63bdd3a1ee7dc1ac35f4957d5df5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7437042-e8b4-fabb-0120-b261bf27fe44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem total_eq_of_saturation
    {ι α : Type*} [Fintype ι] [Fintype α]
    (mass : α → ℕ) (hmass : ∀ a, 0 < mass a)
    (weight : ι → ℕ) (f : ι → α) (hinj : Function.Injective f)
    (hlower : ∀ i, weight i ≤ mass (f i))
    (hupper : (∑ a, mass a) ≤ ∑ i, weight i) :
    (∑ a, mass a) = ∑ i, weight i := by
  classical
  obtain ⟨hb, hw⟩ := bijective_and_weights_eq mass hmass weight f hinj hlower hupper
  let e : ι ≃ α := Equiv.ofBijective f hb
  calc
    _ = ∑ i, mass (f i) := (Equiv.sum_comp e mass).symm
    _ = _ := Finset.sum_congr rfl (fun i _ => (hw i).symm)

end GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Enumerative/PositiveMassExhaustion.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d17b523b57ddd2359bf6c4fa98e9eebc3fc0fcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
