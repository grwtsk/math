# Ideal.exists_ltSeries_of_hasGoingDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a8f70938a235aaa1a1a4ed87906306dbf59c91b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43b050a44b254a9371076b8d7647f26ab72e396e5f19f1c03e569679470586d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e388b267-2698-34f4-2c9b-5bb370d92755",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45fcb96a-b828-2192-4667-cc65e8a028f1",
  "kind": "lemma",
  "lexical_name": "Ideal.exists_ltSeries_of_hasGoingDown",
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
  "slug": "ideal-exists-ltseries-of-hasgoingdown--e6ba8d3342e13e7553676c4c",
  "source": {
    "blob": "9a8f70938a235aaa1a1a4ed87906306dbf59c91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 71,
    "path": "GRWTSK/Algebra/GoingDown/Variant43b050a44b254a9371076b8d7647f26ab72e396e5f19f1c03e569679470586d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6ba8d3342e13e7553676c4cd6d0d868d2f2c8537183a4a414279c826ce9bbfa",
  "verification": {
    "reference": "docs/verification/Algebra/GoingDown/Variant43b050a44b254a9371076b8d7647f26ab72e396e5f19f1c03e569679470586d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45fcb96a-b828-2192-4667-cc65e8a028f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.exists_ltSeries_of_hasGoingDown [Algebra.HasGoingDown R S]
    (l : LTSeries (PrimeSpectrum R)) (P : Ideal S) [P.IsPrime] [lo : P.LiesOver l.last.asIdeal] :
    ∃ (L : LTSeries (PrimeSpectrum S)),
      L.length = l.length ∧
      L.last = ⟨P, inferInstance⟩ ∧
      List.map (PrimeSpectrum.comap (algebraMap R S)) L.toList = l.toList := by
  induction l using RelSeries.inductionOn generalizing P with
  | singleton q =>
    use RelSeries.singleton _ ⟨P, inferInstance⟩
    simp only [RelSeries.singleton_length, RelSeries.last_singleton, RelSeries.toList_singleton,
      List.map_cons, List.map_nil, List.cons.injEq, and_true, true_and]
    ext : 1
    simpa using lo.over.symm
  | cons l q lt ih =>
    simp only [RelSeries.last_cons] at lo
    obtain ⟨L, len, last, spec⟩ := ih P
    have : L.head.asIdeal.LiesOver l.head.asIdeal := by
      constructor
      rw [← L.toList_getElem_zero_eq_head, ← l.toList_getElem_zero_eq_head, Ideal.under_def]
      have : l.toList[0] = (PrimeSpectrum.comap (algebraMap R S)) L.toList[0] := by
        rw [List.getElem_map_rev (PrimeSpectrum.comap (algebraMap R S)),
          List.getElem_of_eq spec.symm _]
      rwa [PrimeSpectrum.ext_iff] at this
    obtain ⟨Q, Qlt, hQ, Qlo⟩ := Ideal.exists_ideal_lt_liesOver_of_lt L.head.asIdeal lt
    use L.cons ⟨Q, hQ⟩ Qlt
    simp only [RelSeries.cons_length, add_left_inj, RelSeries.last_cons]
    exact ⟨len, last, by simpa [spec] using PrimeSpectrum.ext_iff.mpr Qlo.over.symm⟩

namespace Algebra.HasGoingDown

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

/-- An `R`-algebra `S` has the going down property if and only if generalizations lift
along `Spec S → Spec R`. -/
@[stacks 00HW "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingDown/Variant43b050a44b254a9371076b8d7647f26ab72e396e5f19f1c03e569679470586d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingDown/Variant43b050a44b254a9371076b8d7647f26ab72e396e5f19f1c03e569679470586d8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8f70938a235aaa1a1a4ed87906306dbf59c91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
