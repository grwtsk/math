# isClosed_singleton_iff_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb6a88af-5801-57d7-59f9-27c26969d5ea",
  "kind": "theorem",
  "lexical_name": "isClosed_singleton_iff_isMaximal",
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
  "slug": "isclosed-singleton-iff-ismaximal--01629b9248a67cb887190cba",
  "source": {
    "blob": "28264c3f984918cdf2cc035f1a92c2286ed2594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 450,
    "path": "GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01629b9248a67cb887190cba5e10541c19396b0dd0b98e3f7e06816429411150",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6a88af-5801-57d7-59f9-27c26969d5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_singleton_iff_isMaximal (x : PrimeSpectrum R) :
    IsClosed ({x} : Set (PrimeSpectrum R)) ↔ x.asIdeal.IsMaximal := by
  refine' (isClosed_iff_zeroLocus _).trans ⟨fun h => _, fun h => _⟩
  · obtain ⟨s, hs⟩ := h
    rw [eq_comm, Set.eq_singleton_iff_unique_mem] at hs
    refine'
      ⟨⟨x.2.1, fun I hI =>
          Classical.not_not.1
            (mt (Ideal.exists_le_maximal I) <| not_exists.2 fun J => not_and.2 fun hJ hIJ => _)⟩⟩
    exact
      ne_of_lt (lt_of_lt_of_le hI hIJ)
        (symm <|
          congr_arg PrimeSpectrum.asIdeal
            (hs.2 ⟨J, hJ.isPrime⟩ fun r hr => hIJ (le_of_lt hI <| hs.1 hr)))
  · refine' ⟨x.asIdeal.1, _⟩
    rw [eq_comm, Set.eq_singleton_iff_unique_mem]
    refine' ⟨fun _ h => h, fun y hy => PrimeSpectrum.ext _ _ (h.eq_of_le y.2.ne_top hy).symm⟩
#align prime_spectrum.is_closed_singleton_iff_is_maximal PrimeSpectrum.isClosed_singleton_iff_isMaximal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28264c3f984918cdf2cc035f1a92c2286ed2594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
