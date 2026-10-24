# isLyapunovStable_of_iterate_nonexpansive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:529a6b53-d31b-c513-c938-cf99fe49d77d",
  "kind": "theorem",
  "lexical_name": "isLyapunovStable_of_iterate_nonexpansive",
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
  "slug": "islyapunovstable-of-iterate-nonexpansive--8a0653047f5f970688e8479c",
  "source": {
    "blob": "45ee170f2a8448df257fd77cec84643df54ce756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 226,
    "path": "GRWTSK/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a0653047f5f970688e8479cf51a35fadd76a5fda44028471bdae70a053b918c",
  "verification": {
    "reference": "docs/verification/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:529a6b53-d31b-c513-c938-cf99fe49d77d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLyapunovStable_of_iterate_nonexpansive
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    (nonexpansive :
      ∀ iteration state,
        dist ((operator.step^[iteration]) state)
            ((operator.step^[iteration]) fixedPoint.point) ≤
          dist state fixedPoint.point) :
    IsLyapunovStable operator fixedPoint := by
  intro ε εPositive
  refine ⟨ε, εPositive, ?_⟩
  intro state stateClose iteration
  have estimate := nonexpansive iteration state
  rw [fixedPoint.iterate_eq iteration] at estimate
  exact lt_of_le_of_lt estimate stateClose

/-- A strict contraction is in particular Lyapunov stable at an exact fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45ee170f2a8448df257fd77cec84643df54ce756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
