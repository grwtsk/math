# exists_endpointSignProfile_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f8170f1-1a96-1d0f-be77-8f0d5f0a978b",
  "kind": "theorem",
  "lexical_name": "exists_endpointSignProfile_collision",
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
  "slug": "exists-endpointsignprofile-collision--f9bee0ce8f3a0793712d1678",
  "source": {
    "blob": "044a6f0b8a797a2927ad8766326d8e5342017fb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Farey/EndpointInformationLoss.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9bee0ce8f3a0793712d1678f8b26b7059a496edffd219b08396d8ce9d2c2112",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/EndpointInformationLoss.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f8170f1-1a96-1d0f-be77-8f0d5f0a978b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_endpointSignProfile_collision :
    ∃ (I : Cell) (x : ℚ) (p c : Polynomial ℚ),
      endpointSignProfile I p = endpointSignProfile I c ∧
      rationalRootAt x p ≠ rationalRootAt x c := by
  obtain ⟨q, c, I, x, hleft, hright, _, _, hroot, hnotroot⟩ :=
    exists_endpoint_positive_factor_with_extra_rational_root
  refine ⟨I, x, q * c, c, ?_, ?_⟩
  · apply Prod.ext
    · exact propext (eval_mul_nonpos_iff_of_pos q c I.left hleft)
    · exact propext (eval_mul_nonneg_iff_of_pos q c I.right hright)
  · intro heq
    change ((q * c).eval x = 0) = (c.eval x = 0) at heq
    exact hnotroot (Eq.mp heq hroot)

/-- There exist an actual Farey cell and a rational root query that cannot
be reconstructed by any function of the two endpoint-sign predicates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/EndpointInformationLoss.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/EndpointInformationLoss.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `044a6f0b8a797a2927ad8766326d8e5342017fb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
