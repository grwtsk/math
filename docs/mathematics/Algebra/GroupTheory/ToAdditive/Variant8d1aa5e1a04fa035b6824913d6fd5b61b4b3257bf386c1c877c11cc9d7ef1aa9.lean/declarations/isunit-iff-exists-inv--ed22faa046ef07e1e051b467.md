# isUnit'_iff_exists_inv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bfa5216-ec20-55d8-fe31-c99ffbb5e6a7",
  "kind": "theorem",
  "lexical_name": "isUnit'_iff_exists_inv'",
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
  "slug": "isunit-iff-exists-inv--ed22faa046ef07e1e051b467",
  "source": {
    "blob": "f26e76028ef20d5d3344475246888a3c37c3dd73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 318,
    "path": "GRWTSK/Algebra/GroupTheory/ToAdditive/Variant8d1aa5e1a04fa035b6824913d6fd5b61b4b3257bf386c1c877c11cc9d7ef1aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed22faa046ef07e1e051b467b67e92332ab7e874bcc9bc89fe2842ee087f9c36",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToAdditive/Variant8d1aa5e1a04fa035b6824913d6fd5b61b4b3257bf386c1c877c11cc9d7ef1aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bfa5216-ec20-55d8-fe31-c99ffbb5e6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit'_iff_exists_inv' [CommMonoid M] {a : M} : IsUnit' a ↔ ∃ b, b * a = 1 := by
  simp [isUnit'_iff_exists_inv, mul_comm]

/-! Test a permutation with a cycle of length > 2. -/
@[to_additive (reorder := 3 4 5)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToAdditive/Variant8d1aa5e1a04fa035b6824913d6fd5b61b4b3257bf386c1c877c11cc9d7ef1aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToAdditive/Variant8d1aa5e1a04fa035b6824913d6fd5b61b4b3257bf386c1c877c11cc9d7ef1aa9.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26e76028ef20d5d3344475246888a3c37c3dd73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
