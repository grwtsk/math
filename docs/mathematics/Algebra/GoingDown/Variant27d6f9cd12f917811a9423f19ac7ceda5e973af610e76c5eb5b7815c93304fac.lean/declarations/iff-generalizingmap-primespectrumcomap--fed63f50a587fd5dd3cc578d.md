# iff_generalizingMap_primeSpectrumComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1043a3d4-e36a-dc66-b549-250c793051b0",
  "kind": "lemma",
  "lexical_name": "iff_generalizingMap_primeSpectrumComap",
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
  "slug": "iff-generalizingmap-primespectrumcomap--fed63f50a587fd5dd3cc578d",
  "source": {
    "blob": "3e193c222db3b3b6a600fb0e6f829d845eb6f239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fed63f50a587fd5dd3cc578dc82a274c0908f31c236b200172272ed196ed306e",
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

Occurrence: `result:1043a3d4-e36a-dc66-b549-250c793051b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_generalizingMap_primeSpectrumComap :
    Algebra.HasGoingDown R S ↔
      GeneralizingMap (PrimeSpectrum.comap (algebraMap R S)) := by
  refine ⟨?_, fun h ↦ ⟨fun {p} hp Q hQ hlt ↦ ?_⟩⟩
  · intro h Q p hp
    rw [← PrimeSpectrum.le_iff_specializes] at hp
    obtain ⟨P, hle, hP, h⟩ := Q.asIdeal.exists_ideal_le_liesOver_of_le (p := p.asIdeal)
      (q := Q.asIdeal.under R) hp
    refine ⟨⟨P, hP⟩, (PrimeSpectrum.le_iff_specializes _ Q).mp hle, ?_⟩
    ext : 1
    exact h.over.symm
  · have : (⟨p, hp⟩ : PrimeSpectrum R) ⤳ (PrimeSpectrum.comap (algebraMap R S) ⟨Q, hQ⟩) :=
      (PrimeSpectrum.le_iff_specializes _ _).mp hlt.le
    obtain ⟨P, hs, heq⟩ := h this
    refine ⟨P.asIdeal, (PrimeSpectrum.le_iff_specializes _ _).mpr hs, P.2, ⟨?_⟩⟩
    simpa [PrimeSpectrum.ext_iff] using heq.symm

variable (R S) in
@[stacks 00HX]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e193c222db3b3b6a600fb0e6f829d845eb6f239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
