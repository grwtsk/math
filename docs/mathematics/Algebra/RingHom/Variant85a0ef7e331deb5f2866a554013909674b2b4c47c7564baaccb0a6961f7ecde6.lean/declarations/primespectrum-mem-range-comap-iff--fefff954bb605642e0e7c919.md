# PrimeSpectrum.mem_range_comap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bc87812-533c-e897-8b93-a36a440030b6",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.mem_range_comap_iff",
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
  "slug": "primespectrum-mem-range-comap-iff--fefff954bb605642e0e7c919",
  "source": {
    "blob": "89179e24dfabde7e7f61bfa729c48d2413eec9fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 235,
    "path": "GRWTSK/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fefff954bb605642e0e7c919da6b2b445cde9f2d01ae55384548817c4ddebb6d",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bc87812-533c-e897-8b93-a36a440030b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.mem_range_comap_iff {p : PrimeSpectrum R} :
    p ∈ Set.range f.specComap ↔ (p.asIdeal.map f).comap f = p.asIdeal := by
  refine ⟨fun ⟨q, hq⟩ ↦ by simp [← hq], ?_⟩
  rw [Ideal.comap_map_eq_self_iff_of_isPrime]
  rintro ⟨q, _, hq⟩
  exact ⟨⟨q, inferInstance⟩, PrimeSpectrum.ext hq⟩

end SpecOfSurjective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89179e24dfabde7e7f61bfa729c48d2413eec9fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
