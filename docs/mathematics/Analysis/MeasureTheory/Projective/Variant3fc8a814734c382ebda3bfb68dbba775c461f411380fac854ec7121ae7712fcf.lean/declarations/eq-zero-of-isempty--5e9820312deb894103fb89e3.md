# eq_zero_of_isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6914e760103e31f31413badd03fbc1aec60d26f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24aac9f5-0d6a-e71b-9288-f3a36c8dcde4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3c825d2-e96d-436d-8056-556acdfad936",
  "kind": "lemma",
  "lexical_name": "eq_zero_of_isEmpty",
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
  "slug": "eq-zero-of-isempty--5e9820312deb894103fb89e3",
  "source": {
    "blob": "b6914e760103e31f31413badd03fbc1aec60d26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e9820312deb894103fb89e3b4b0c31126eabfb313cc5c18f935d1602380b6dc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3c825d2-e96d-436d-8056-556acdfad936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_of_isEmpty [h : IsEmpty (Π i, α i)]
    (hP : IsProjectiveMeasureFamily P) (I : Finset ι) :
    P I = 0 := by
  classical
  obtain ⟨i, hi⟩ := isEmpty_pi.mp h
  rw [hP (insert i I) I (I.subset_insert i)]
  have : IsEmpty (Π j : ↑(insert i I), α j) := by simp [hi]
  rw [(P (insert i I)).eq_zero_of_isEmpty]
  simp

/-- Auxiliary lemma for `measure_univ_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6914e760103e31f31413badd03fbc1aec60d26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
