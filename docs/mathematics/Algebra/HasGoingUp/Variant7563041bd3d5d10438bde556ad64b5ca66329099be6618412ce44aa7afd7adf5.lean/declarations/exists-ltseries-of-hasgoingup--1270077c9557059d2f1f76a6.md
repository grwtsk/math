# exists_ltSeries_of_hasGoingUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69b17435-5436-486e-73e2-fe48c7f60217",
  "kind": "lemma",
  "lexical_name": "exists_ltSeries_of_hasGoingUp",
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
  "slug": "exists-ltseries-of-hasgoingup--1270077c9557059d2f1f76a6",
  "source": {
    "blob": "292aaf105ede68b7dbf47ca798464752b24cd125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 74,
    "path": "GRWTSK/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1270077c9557059d2f1f76a61590cee6697845b7f62136f4ce0cc05a9bd8b939",
  "verification": {
    "reference": "docs/verification/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69b17435-5436-486e-73e2-fe48c7f60217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_ltSeries_of_hasGoingUp [Algebra.HasGoingUp R S]
    (l : LTSeries (PrimeSpectrum R))
    (P : Ideal S) [P.IsPrime]
    [lo : P.LiesOver (RelSeries.head l).asIdeal] :
    ∃ L : LTSeries (PrimeSpectrum S),
      L.length = l.length ∧
      L.head = (⟨P, inferInstance⟩ : PrimeSpectrum S) ∧
      List.map (PrimeSpectrum.comap (algebraMap R S)) (L.toList) = l.toList := by
  induction l using RelSeries.inductionOn generalizing P with
  | singleton q =>
    refine ⟨RelSeries.singleton _ ⟨P, inferInstance⟩, rfl, rfl, ?_⟩
    simpa [PrimeSpectrum.ext_iff] using lo.over.symm
  | cons l q lt ih =>
    simp only [RelSeries.head_cons] at lo
    obtain ⟨Q, PQlt, hQ, Qlo⟩ :=
      Ideal.exists_ideal_gt_liesOver_of_lt P lt
    obtain ⟨L, len, head, spec⟩ := ih Q
    refine ⟨L.cons ⟨P, inferInstance⟩ (by
      simp_all only [Set.mem_ofPred_eq]
      exact PQlt), by simpa using len, rfl, ?_⟩
    simpa [spec, PrimeSpectrum.ext_iff] using lo.over.symm

end Ideal

namespace Algebra.HasGoingUp

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

/-- An `R`-algebra `S` has the going up property if and only if specializations lift
along `Spec S → Spec R`. -/
@[stacks 00HW "(2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `292aaf105ede68b7dbf47ca798464752b24cd125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
