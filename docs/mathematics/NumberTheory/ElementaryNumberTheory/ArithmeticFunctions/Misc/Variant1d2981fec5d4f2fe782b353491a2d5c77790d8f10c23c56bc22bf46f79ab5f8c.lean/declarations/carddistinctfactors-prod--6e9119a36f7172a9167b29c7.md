# cardDistinctFactors_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0be9f556-5912-6429-7e0e-f2ab85b57aea",
  "kind": "theorem",
  "lexical_name": "cardDistinctFactors_prod",
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
  "slug": "carddistinctfactors-prod--6e9119a36f7172a9167b29c7",
  "source": {
    "blob": "c0d23d008b5d336f0cdd42ad3a60acefe06066b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 381,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9119a36f7172a9167b29c76a3c351529c1be323440f676e6c30556dab67d67",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0be9f556-5912-6429-7e0e-f2ab85b57aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardDistinctFactors_prod {ι : Type*} {s : Finset ι} {f : ι → ℕ}
    (h : (s : Set ι).Pairwise (Coprime on f)) : ω (∏ i ∈ s, f i) = ∑ i ∈ s, ω (f i) := by
  induction s using cons_induction_on with
  | empty => simp
  | cons a s ha ih =>
    rw [prod_cons, sum_cons, cardDistinctFactors_mul, ih]
    · exact fun x hx y hy hxy => h (by simp [hx]) (by simp [hy]) hxy
    · exact Coprime.prod_right fun i hi =>
        h (by simp) (by simp [hi]) (ne_of_mem_of_not_mem hi ha).symm

end SpecialFunctions

section Sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d23d008b5d336f0cdd42ad3a60acefe06066b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
