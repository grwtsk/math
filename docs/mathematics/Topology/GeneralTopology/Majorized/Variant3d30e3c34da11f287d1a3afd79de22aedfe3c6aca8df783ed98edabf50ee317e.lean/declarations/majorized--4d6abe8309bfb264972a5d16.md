# Majorized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ff820243250c0ec48a581d8625e2e3fde985b3dc11d1b2b3f01b5b6e8fe0d64",
  "kind": "def",
  "lexical_name": "Majorized",
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
  "slug": "majorized--4d6abe8309bfb264972a5d16",
  "source": {
    "blob": "3f5161eba1f9db6fd674f2a4a1fdafb7c8d61353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Majorized/Variant3d30e3c34da11f287d1a3afd79de22aedfe3c6aca8df783ed98edabf50ee317e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d6abe8309bfb264972a5d169b9e7ed586be88d7cf8ca4cf944cbe949b424959",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Majorized/Variant3d30e3c34da11f287d1a3afd79de22aedfe3c6aca8df783ed98edabf50ee317e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ff820243250c0ec48a581d8625e2e3fde985b3dc11d1b2b3f01b5b6e8fe0d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Majorized (f b : ℝ → ℝ) (exp : ℝ) : Prop :=
  ∀ exp' > exp, f =o[atTop] (b ^ exp')

namespace Majorized

variable {f g b : ℝ → ℝ} {exp : ℝ}

/-- Replacing the first argument of `Majorized` by an eventually equal function preserves it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Majorized/Variant3d30e3c34da11f287d1a3afd79de22aedfe3c6aca8df783ed98edabf50ee317e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Majorized/Variant3d30e3c34da11f287d1a3afd79de22aedfe3c6aca8df783ed98edabf50ee317e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f5161eba1f9db6fd674f2a4a1fdafb7c8d61353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
