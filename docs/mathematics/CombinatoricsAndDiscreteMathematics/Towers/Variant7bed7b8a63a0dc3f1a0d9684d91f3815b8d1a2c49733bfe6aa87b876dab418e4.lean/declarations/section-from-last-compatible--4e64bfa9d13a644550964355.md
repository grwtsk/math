# section_from_last_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cf33fad-65b1-0f2b-f72b-eb94f0bcd694",
  "kind": "theorem",
  "lexical_name": "section_from_last_compatible",
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
  "slug": "section-from-last-compatible--4e64bfa9d13a644550964355",
  "source": {
    "blob": "3fcd1c0d9271a978685afc886c9671ba168cac0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e64bfa9d13a6445509643559f55391b9c9777a07e5fe191ed94ae8443ab53bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cf33fad-65b1-0f2b-f72b-eb94f0bcd694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem section_from_last_compatible {N : ℕ} (T : FiniteInverseSystem N)
    (x : T.Stage (Fin.last N)) : CompatibleSection T (sectionFromLast T x) := by
  intro i j hij
  exact T.restrict_comp i j (Fin.last N) hij (Fin.le_last j) x

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Towers
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fcd1c0d9271a978685afc886c9671ba168cac0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
