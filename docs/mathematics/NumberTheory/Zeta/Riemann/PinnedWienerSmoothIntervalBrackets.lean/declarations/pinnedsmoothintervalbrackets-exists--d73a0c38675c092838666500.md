# pinnedSmoothIntervalBrackets_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54ba3113-db3d-8a8b-d9ae-a588136464fb",
  "kind": "theorem",
  "lexical_name": "pinnedSmoothIntervalBrackets_exists",
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
  "slug": "pinnedsmoothintervalbrackets-exists--d73a0c38675c092838666500",
  "source": {
    "blob": "5830184b9c03d227551b941d0ba64962457ba6bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 297,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d73a0c38675c092838666500dd4f4a33003fcdca97fe9a42b821d009d93ea4cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54ba3113-db3d-8a8b-d9ae-a588136464fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedSmoothIntervalBrackets_exists
    {a b η : ℝ} (ha : 0 < a) (hab : a < b)
    (hη : 0 < η) (hηleft : η < a) (hηwidth : η < b - a) :
    PinnedSmoothIntervalBrackets a b η := by
  obtain ⟨lo, hloSmooth, hloCompact, hloAway, hloPoint, hloMass⟩ :=
    pinnedSmoothIntervalLower ha hab hη hηwidth
  obtain ⟨hi, hhiSmooth, hhiCompact, hhiAway, hhiPoint, hhiMass⟩ :=
    pinnedSmoothIntervalUpper ha hab hη hηleft
  refine ⟨lo, hi, hloSmooth, hhiSmooth, hloCompact, hhiCompact,
    hloAway, hhiAway, ?_, hloMass, hhiMass⟩
  intro x
  exact ⟨(hloPoint x).1, (hloPoint x).2.2,
    (hhiPoint x).2.2, (hhiPoint x).2.1⟩

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5830184b9c03d227551b941d0ba64962457ba6bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
