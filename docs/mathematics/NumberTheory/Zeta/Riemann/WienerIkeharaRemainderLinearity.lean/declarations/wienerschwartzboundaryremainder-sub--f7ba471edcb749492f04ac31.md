# wienerSchwartzBoundaryRemainder_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e486a4c-53c4-4534-a4e3-c791747fd603",
  "kind": "theorem",
  "lexical_name": "wienerSchwartzBoundaryRemainder_sub",
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
  "slug": "wienerschwartzboundaryremainder-sub--f7ba471edcb749492f04ac31",
  "source": {
    "blob": "d438b96fc5a976aa28ad2bd99df87440743b9814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ba471edcb749492f04ac310a4df26d5c6fe7570bef4f919b165a85a0aca664",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e486a4c-53c4-4534-a4e3-c791747fd603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSchwartzBoundaryRemainder_sub
    (g h : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryRemainder (g - h) T =
      wienerSchwartzBoundaryRemainder g T -
        wienerSchwartzBoundaryRemainder h T := by
  rw [sub_eq_add_neg,
    wienerSchwartzBoundaryRemainder_add g (-h) hT,
    wienerSchwartzBoundaryRemainder_neg]
  ring

/-- The ACTUAL compact truncation from the companion module
satisfies the exact remainder decomposition at all T>=1.

The still-open result is that these truncations converge in the
Schwartz topology, not the algebraic identity below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d438b96fc5a976aa28ad2bd99df87440743b9814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
