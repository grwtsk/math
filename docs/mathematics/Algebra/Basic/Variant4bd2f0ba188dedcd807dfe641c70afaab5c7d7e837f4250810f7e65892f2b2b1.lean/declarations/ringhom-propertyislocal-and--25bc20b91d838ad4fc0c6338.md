# RingHom.PropertyIsLocal.and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23bb03ac-3879-c54a-acbd-d60ba7a23c51",
  "kind": "lemma",
  "lexical_name": "RingHom.PropertyIsLocal.and",
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
  "slug": "ringhom-propertyislocal-and--25bc20b91d838ad4fc0c6338",
  "source": {
    "blob": "c4843966cdd144391aab8bcdbab8b77677ad3ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 415,
    "path": "GRWTSK/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25bc20b91d838ad4fc0c6338d75c82624274794c71bc0c74d8bd9519f64f9f51",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23bb03ac-3879-c54a-acbd-d60ba7a23c51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.PropertyIsLocal.and (hP : PropertyIsLocal P) (hQ : PropertyIsLocal Q) :
    PropertyIsLocal (fun f ↦ P f ∧ Q f) where
  localizationAwayPreserves := hP.localizationAwayPreserves.and hQ.localizationAwayPreserves
  ofLocalizationSpanTarget := hP.ofLocalizationSpanTarget.and hQ.ofLocalizationSpanTarget
  ofLocalizationSpan := hP.ofLocalizationSpan.and hQ.ofLocalizationSpan
  StableUnderCompositionWithLocalizationAwayTarget :=
    hP.StableUnderCompositionWithLocalizationAwayTarget.and
    hQ.StableUnderCompositionWithLocalizationAwayTarget

end

section

variable (hP : RingHom.IsStableUnderBaseChange @P)
variable {R S Rᵣ Sᵣ : Type u} [CommRing R] [CommRing S] [CommRing Rᵣ] [CommRing Sᵣ] [Algebra R Rᵣ]
  [Algebra S Sᵣ]

include hP

/-- Let `S` be an `R`-algebra and `Sᵣ` and `Rᵣ` be the respective localizations at a submonoid
`M` of `R`. If `P` is stable under base change and `P` holds for `algebraMap R S`, then
`P` holds for `algebraMap Rᵣ Sᵣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4843966cdd144391aab8bcdbab8b77677ad3ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
