# strict_upper_of_real_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdc22a33-e1f5-e4cd-94e8-11e01ac7822b",
  "kind": "theorem",
  "lexical_name": "strict_upper_of_real_bound",
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
  "slug": "strict-upper-of-real-bound--87d9c79a6746659c28a728bf",
  "source": {
    "blob": "1f23b3626f9d627a845d1c5cd7bdfeb95e55692c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87d9c79a6746659c28a728bfb87da696faccb7025b5327dd385ecae98a9cc0ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdc22a33-e1f5-e4cd-94e8-11e01ac7822b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_upper_of_real_bound {U : ℚ}
    (hbound : (heightCount (15 : ℝ) : ℝ) ≤ (U : ℝ)) (hU : U < 4) :
    heightCount (15 : ℝ) < 4 := by
  have hu : (U : ℝ) < 4 := by exact_mod_cast hU
  have hh : (heightCount (15 : ℝ) : ℝ) < 4 := hbound.trans_lt hu
  exact_mod_cast hh

/-- Actual complete-head exhaustion is conditional on the independent upper count.
The literal positive point, radius, line equality and both analytic weights persist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f23b3626f9d627a845d1c5cd7bdfeb95e55692c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
