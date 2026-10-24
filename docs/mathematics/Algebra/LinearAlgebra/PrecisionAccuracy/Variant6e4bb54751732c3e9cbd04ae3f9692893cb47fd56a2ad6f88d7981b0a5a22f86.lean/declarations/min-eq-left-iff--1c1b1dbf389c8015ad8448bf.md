# min_eq_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fbc58d0-275d-1af5-e1da-dd6f47441290",
  "kind": "theorem",
  "lexical_name": "min_eq_left_iff",
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
  "slug": "min-eq-left-iff--1c1b1dbf389c8015ad8448bf",
  "source": {
    "blob": "d5612833464e4e9819f01eaa258f0ef0650a5094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c1b1dbf389c8015ad8448bf351b7135e112866244d23c042e1fc8af5586e776",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fbc58d0-275d-1af5-e1da-dd6f47441290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem min_eq_left_iff (a b : ScoreMillionths) :
    min a b = a ↔ a ≤ b := by
  constructor
  · intro h
    have hv : Nat.min a.value b.value = a.value :=
      congrArg ScoreMillionths.value h
    change a.value ≤ b.value
    exact _root_.min_eq_left_iff.mp hv
  · intro h
    apply ScoreMillionths.ext
    change Nat.min a.value b.value = a.value
    change a.value ≤ b.value at h
    exact Nat.min_eq_left h

end ScoreMillionths

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5612833464e4e9819f01eaa258f0ef0650a5094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
