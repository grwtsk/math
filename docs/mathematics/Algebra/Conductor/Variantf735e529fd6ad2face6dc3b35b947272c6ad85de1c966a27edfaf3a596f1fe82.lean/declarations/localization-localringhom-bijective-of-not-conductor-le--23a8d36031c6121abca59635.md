# Localization.localRingHom_bijective_of_not_conductor_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70cb1835-8256-2c8b-eec4-fa3b1e3257c7",
  "kind": "lemma",
  "lexical_name": "Localization.localRingHom_bijective_of_not_conductor_le",
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
  "slug": "localization-localringhom-bijective-of-not-conductor-le--23a8d36031c6121abca59635",
  "source": {
    "blob": "edff584f5fa01f744a936b064b73c47f5932e991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 206,
    "path": "GRWTSK/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23a8d36031c6121abca596352cd32b047223c55a587d64f9136b07562fb8f56d",
  "verification": {
    "reference": "docs/verification/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70cb1835-8256-2c8b-eec4-fa3b1e3257c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Localization.localRingHom_bijective_of_not_conductor_le
    {P : Ideal S} [P.IsPrime] (hx : ¬ conductor R x ≤ P) {s : Subalgebra R S}
    (hs : s = R<x>) (p : Ideal s) [p.IsPrime] [P.LiesOver p] :
    Function.Bijective (Localization.localRingHom _ _ _ (P.over_def p)) := by
  obtain ⟨a, ha, haP⟩ := SetLike.not_le_iff_exists.mp hx
  replace ha (b : _) : a * b ∈ s := by simpa [hs] using ha b
  exact Localization.localRingHom_bijective_of_saturated_inf_eq_top _
    (top_le_iff.mp fun y _ ↦ ⟨a, ⟨haP, by simpa using ha 1⟩, ha _⟩) _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edff584f5fa01f744a936b064b73c47f5932e991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
