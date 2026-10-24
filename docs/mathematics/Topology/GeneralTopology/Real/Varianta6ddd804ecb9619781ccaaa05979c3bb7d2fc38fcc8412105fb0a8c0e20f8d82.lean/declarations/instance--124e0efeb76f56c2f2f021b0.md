# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb74dea6c5144677a2f175993b6c9a7c877ee4b4bbf0add53de001477ec2f1a8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--124e0efeb76f56c2f2f021b0",
  "source": {
    "blob": "846349e4b2bc8a60dbec1837a691e03f264b6ae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:124e0efeb76f56c2f2f021b0a919caf42c6364c0c9c801515a9fdf8424084536",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb74dea6c5144677a2f175993b6c9a7c877ee4b4bbf0add53de001477ec2f1a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : ENormedAddCommMonoid ℝ≥0∞ where
  continuous_enorm := continuous_id
  enorm_zero := by simp
  enorm_eq_zero := by simp
  enorm_add_le := by simp

namespace Real

variable {r : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846349e4b2bc8a60dbec1837a691e03f264b6ae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
