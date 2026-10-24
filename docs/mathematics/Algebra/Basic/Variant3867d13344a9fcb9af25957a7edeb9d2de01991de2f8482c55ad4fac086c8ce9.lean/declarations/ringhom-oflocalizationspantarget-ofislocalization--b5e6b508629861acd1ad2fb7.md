# RingHom.OfLocalizationSpanTarget.ofIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9081b6f-66d8-3950-8493-86f7e5563197",
  "kind": "lemma",
  "lexical_name": "RingHom.OfLocalizationSpanTarget.ofIsLocalization",
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
  "slug": "ringhom-oflocalizationspantarget-ofislocalization--b5e6b508629861acd1ad2fb7",
  "source": {
    "blob": "01a81a3f8aa475885e73f66ac42c6d972cddf3fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 435,
    "path": "GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5e6b508629861acd1ad2fb7eaadbad63f632a0a2da851bbdcbf3e324493325a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9081b6f-66d8-3950-8493-86f7e5563197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.OfLocalizationSpanTarget.ofIsLocalization
    (hP : RingHom.OfLocalizationSpanTarget P) (hP' : RingHom.RespectsIso P)
    {R S : Type u} [CommRing R] [CommRing S] (f : R →+* S) (s : Set S) (hs : Ideal.span s = ⊤)
    (hT : ∀ r : s, ∃ (T : Type u) (_ : CommRing T) (_ : Algebra S T)
      (_ : IsLocalization.Away (r : S) T), P ((algebraMap S T).comp f)) : P f := by
  apply hP _ s hs
  intro r
  obtain ⟨T, _, _, _, hT⟩ := hT r
  convert! hP'.1 _ (Localization.algEquiv (R := S) (Submonoid.powers (r : S)) T).symm.toRingEquiv hT
  rw [← RingHom.comp_assoc, RingEquiv.toRingHom_eq_coe,
    AlgEquiv.toRingEquiv_toRingHom, Localization.coe_algEquiv_symm, IsLocalization.map_comp,
    RingHom.comp_id]

section

variable {Q : ∀ {R S : Type u} [CommRing R] [CommRing S], (R →+* S) → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a81a3f8aa475885e73f66ac42c6d972cddf3fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
