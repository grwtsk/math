# not_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:657cce1d-b93a-6aef-98c8-8ff86f7aa845",
  "kind": "theorem",
  "lexical_name": "not_target",
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
  "slug": "not-target--7e922f65d3cbd8fab8dc8f09",
  "source": {
    "blob": "3c5d776f62190967266cfe4a6a127ca0c1086ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e922f65d3cbd8fab8dc8f093c2a25c246f02fc73911d56ac938eae6ca0c480f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:657cce1d-b93a-6aef-98c8-8ff86f7aa845`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_target {W : Witness} {z : ℂ}
    (hs : W.SourceTailValid (MirrorChannels.center z) (MirrorChannels.offset z))
    (he : W.EvaluationValid (MirrorChannels.center z) (MirrorChannels.offset z))
    (hw : W.WeightValid (MirrorChannels.offset z)) (hcheck : W.check=true) :
    ¬ NontrivialZetaZero z := by
  intro hz
  have h := sound hs he hw hcheck
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset] at h
  exact h ⟨poleNormalizedZeta_zero_of_target hz,
    poleNormalizedZeta_zero_of_target hz.critical_reflection⟩

end Witness

/-- A local region requires the same arithmetic witness to be valid at EVERY
eligible point there. Rational-point samples do not inhabit these fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c5d776f62190967266cfe4a6a127ca0c1086ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
