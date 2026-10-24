# negative_routes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c6a6d2c-a34b-e311-771e-2c540ffe762a",
  "kind": "theorem",
  "lexical_name": "negative_routes",
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
  "slug": "negative-routes--a3543cd6e89fe033ebd078cc",
  "source": {
    "blob": "c90ab9be21ba33b599b1c4ffbd3bdb50765531de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 443,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3543cd6e89fe033ebd078ccb64645fd289f6fb509506d822e08b1825c032d72",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c6a6d2c-a34b-e311-771e-2c540ffe762a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_routes (hC : IsComponent E C) {J k : V}
    (hJ : J ∈ C) (hk : k ∈ C) (hJk : E J k false)
    (hn : ∃ a ∈ C, ∃ b ∈ C, E a b true) :
    ∃ p ∈ C, ∃ g ∈ C, E p g true ∧ SignedPath E k p true ∧
      SignedPath E p k true ∧ SignedPath E g J false := by
  classical
  by_cases ho : ∃ r ∈ C, SignedPath E r r true
  · obtain ⟨r, hr, ho⟩ := ho
    obtain ⟨p, hp, g, hg, he⟩ := hn
    exact ⟨p, hp, g, hg, he, hC.all_parities hr ho hk hp true,
      hC.all_parities hr ho hp hk true, hC.all_parities hr ho hg hJ false⟩
  · have no_odd (r : V) (hr : r ∈ C) : ¬ SignedPath E r r true :=
      fun hh => ho ⟨r, hr, hh⟩
    obtain ⟨a, ha, b, hb, he⟩ := hn
    obtain ⟨q, hbk⟩ := hC.connected hb hk
    have hedge : ∃ p ∈ C, ∃ g ∈ C, E p g true ∧ SignedPath E g k false := by
      cases q with
      | false => exact ⟨a, ha, b, hb, he, hbk⟩
      | true =>
          obtain ⟨p, g, hbp, hpg, hgk⟩ := hbk.negative_even_suffix
          have hp := hC.between hb hk hbp ((Reach.single hpg).trans ⟨false, hgk⟩)
          have hg := hC.between hb hk (hbp.trans (Reach.single hpg)) ⟨false, hgk⟩
          exact ⟨p, hp, g, hg, hpg, hgk⟩
    obtain ⟨p, hp, g, hg, hpg, hgk⟩ := hedge
    have hpk : SignedPath E p k true := .cons hpg hgk
    have hkp := hC.return_parity hp hk hpk (no_odd p hp)
    have hkJ := hC.return_parity hJ hk (.singleton hJk) (no_odd J hJ)
    exact ⟨p, hp, g, hg, hpg, hkp, hpk, hgk.append hkJ⟩
end IsComponent

namespace ForbiddenConfiguration
universe u
variable {S : Type u} {P : Specification S} {C : Set (Set S)}

/-- Source choice-of-paths conclusion, retaining the actual triples and all
profile and seed hypotheses of the forbidden configuration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c90ab9be21ba33b599b1c4ffbd3bdb50765531de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
