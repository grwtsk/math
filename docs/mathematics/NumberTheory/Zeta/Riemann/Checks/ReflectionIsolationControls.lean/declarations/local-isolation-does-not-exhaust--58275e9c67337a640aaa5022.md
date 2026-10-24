# local_isolation_does_not_exhaust

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fed2e960-d618-d16a-3396-d353c5796bed",
  "kind": "theorem",
  "lexical_name": "local_isolation_does_not_exhaust",
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
  "slug": "local-isolation-does-not-exhaust--58275e9c67337a640aaa5022",
  "source": {
    "blob": "995deab0a9284e5003b921d765f649fe6d6463b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58275e9c67337a640aaa502228aec208dd4c0f45b931065a587a7a9007991957",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fed2e960-d618-d16a-3396-d353c5796bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_isolation_does_not_exhaust :
    (∀ z, syntheticSet z → syntheticSet (criticalReflection z)) ∧
    (∀ z, syntheticSet z → ‖z - middlePoint‖ ≤ (1 / 8 : ℝ) → z = middlePoint) ∧
    syntheticSet leftPoint ∧ leftPoint.re ≠ (1 / 2 : ℝ) := by
  refine ⟨?_, ?_, Or.inl rfl, by norm_num [leftPoint]⟩
  · intro z hz
    rcases hz with rfl | rfl | rfl
    · exact Or.inr (Or.inr reflected_pair.1)
    · exact Or.inr (Or.inl reflections_are_different.1)
    · exact Or.inl reflected_pair.2.1
  · intro z hz hd
    rcases hz with rfl | rfl | rfl
    · have h := (Complex.abs_re_le_norm (leftPoint - middlePoint)).trans hd
      norm_num [Complex.sub_re, leftPoint, middlePoint] at h
    · rfl
    · have h := (Complex.abs_re_le_norm (rightPoint - middlePoint)).trans hd
      norm_num [Complex.sub_re, rightPoint, middlePoint] at h

/-- Two positively weighted found points need not be the complete source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995deab0a9284e5003b921d765f649fe6d6463b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
