# endpointFibre_diagonal_not_le_at_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63c596cc-758b-89db-9bd5-e78662e0da5b",
  "kind": "theorem",
  "lexical_name": "endpointFibre_diagonal_not_le_at_three",
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
  "slug": "endpointfibre-diagonal-not-le-at-three--32dcdf3e1e3ee8a7d890b29d",
  "source": {
    "blob": "405364f32af7a8cc02408418276e88e6998168ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32dcdf3e1e3ee8a7d890b29d8c2093cbecc13fbadfe72073c6e1d359f1fe71bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63c596cc-758b-89db-9bd5-e78662e0da5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointFibre_diagonal_not_le_at_three :
    ¬ (mertensEndpointFibreDiagonalEnergy 3 ≤
      mertensTwoPointEndpointFibreQuadraticEnergy 3) := by
  rw [mertensEndpointFibreDiagonalEnergy_three,
    mertensTwoPointEndpointFibreQuadraticEnergy_three]
  norm_num

/-- Proposal that the four-Möbius diagonal lower-bounds every endpoint fibre. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `405364f32af7a8cc02408418276e88e6998168ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
