# le_iInf_mul_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e29ebc8-5a12-7c7a-931e-ecd0c95fd425",
  "kind": "lemma",
  "lexical_name": "le_iInf_mul_iInf",
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
  "slug": "le-iinf-mul-iinf--f9c75edbc60e36846269aa53",
  "source": {
    "blob": "90948e6cf41bd24686f90f047e157e64c81a81be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 910,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant3007ba8d654caaf7e95c20588dfb9a8a9a598943125adb87bf0f53627a762fa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9c75edbc60e36846269aa53d749f241625add6d55738f42811646e46ad085e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant3007ba8d654caaf7e95c20588dfb9a8a9a598943125adb87bf0f53627a762fa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e29ebc8-5a12-7c7a-931e-ecd0c95fd425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 910–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_iInf_mul_iInf {g : κ → ℝ≥0∞} (hf : ∃ i, f i ≠ ∞) (hg : ∃ j, g j ≠ ∞)
    (ha : ∀ i j, a ≤ f i * g j) : a ≤ (⨅ i, f i) * ⨅ j, g j := by
  rw [← iInf_ne_top_subtype]
  have := nonempty_subtype.2 hf
  have := hg.nonempty
  replace hg : ⨅ j, g j ≠ ∞ := by simpa using hg
  rw [iInf_mul fun h ↦ (hg h).elim, le_iInf_iff]
  rintro ⟨i, hi⟩
  simpa [mul_iInf fun h ↦ (hi h).elim] using ha i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant3007ba8d654caaf7e95c20588dfb9a8a9a598943125adb87bf0f53627a762fa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant3007ba8d654caaf7e95c20588dfb9a8a9a598943125adb87bf0f53627a762fa8.lean#L910).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90948e6cf41bd24686f90f047e157e64c81a81be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
