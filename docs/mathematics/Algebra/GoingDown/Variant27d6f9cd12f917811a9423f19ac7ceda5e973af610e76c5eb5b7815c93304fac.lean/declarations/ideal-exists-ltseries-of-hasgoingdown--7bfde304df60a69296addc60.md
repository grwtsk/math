# Ideal.exists_ltSeries_of_hasGoingDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e0b6287-2bee-c0e0-42c1-99498b6d512d",
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
  "slug": "ideal-exists-ltseries-of-hasgoingdown--7bfde304df60a69296addc60",
  "source": {
    "blob": "3e193c222db3b3b6a600fb0e6f829d845eb6f239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 79,
    "path": "GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bfde304df60a69296addc6079429fef5d46d5a5a0df3b99b2ae4d2c21433853",
  "verification": {
    "reference": "docs/verification/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e0b6287-2bee-c0e0-42c1-99498b6d512d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–113.

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

[Verification target and public status](../../../../../verification/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e193c222db3b3b6a600fb0e6f829d845eb6f239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
