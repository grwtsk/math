# awayMapAux_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2b1ed38-efc1-1a66-e45f-0931c649d0e9",
  "kind": "lemma",
  "lexical_name": "awayMapAux_mk",
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
  "slug": "awaymapaux-mk--9223dfc7e8676dda1c72680a",
  "source": {
    "blob": "38300e7a2a2befa2a7a8c0432a959d87ca5669d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 657,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9223dfc7e8676dda1c72680a738cfc6c5d9402228e3ce2c97dbb496f51d7cb43",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b1ed38-efc1-1a66-e45f-0931c649d0e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma awayMapAux_mk (n a i hi) :
    awayMapAux 𝒜 ⟨_, hx⟩ (mk ⟨n, a, ⟨f ^ i, hi⟩, ⟨i, rfl⟩⟩) =
      Localization.mk (a * g ^ i) ⟨x ^ i, (Submonoid.mem_powers_iff _ _).mpr ⟨i, rfl⟩⟩ := by
  have : algebraMap A (Localization.Away x) f *
    (Localization.mk g ⟨f * g, (Submonoid.mem_powers_iff _ _).mpr ⟨1, by simp [hx]⟩⟩) = 1 := by
    rw [← Algebra.smul_def, Localization.smul_mk]
    exact Localization.mk_self ⟨f*g, _⟩
  simp [awayMapAux]
  rw [Localization.awayLift_mk (hv := this), ← Algebra.smul_def,
    Localization.mk_pow, Localization.smul_mk]
  subst hx
  rfl

include hg in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38300e7a2a2befa2a7a8c0432a959d87ca5669d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
