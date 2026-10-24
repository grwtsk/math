# trace_eq_zero_of_not_exists_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb331db2-a600-01bd-cee0-77b187f4054b",
  "kind": "theorem",
  "lexical_name": "trace_eq_zero_of_not_exists_basis",
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
  "slug": "trace-eq-zero-of-not-exists-basis--0d0e42b379e5babcac24eef9",
  "source": {
    "blob": "e58b688930ba1d11a15c30637890fa6da103e7ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d0e42b379e5babcac24eef959640938ea0183c51ce6cdb2c80c9424a38eb971",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb331db2-a600-01bd-cee0-77b187f4054b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_eq_zero_of_not_exists_basis (h : ¬∃ s : Finset S, Nonempty (Basis s R S)) :
    trace R S = 0 := by ext s; simp [trace_apply, LinearMap.trace, h]

variable {R}

-- Can't be a `simp` lemma because it depends on a choice of basis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e58b688930ba1d11a15c30637890fa6da103e7ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
