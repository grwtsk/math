# sqrt_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aedd2d02-838e-ac7e-7281-33ed3fd0b74a",
  "kind": "theorem",
  "lexical_name": "sqrt_pos",
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
  "slug": "sqrt-pos--f136168d493fbecc4ca354bf",
  "source": {
    "blob": "54a31b281af483b92946afebaf5e7233b410a7e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f136168d493fbecc4ca354bfaeef5d4751784cbb6d96a32d71415b0401308c59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aedd2d02-838e-ac7e-7281-33ed3fd0b74a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem sqrt_pos : 0 < sqrt x ↔ 0 < x := by simp [pos_iff_ne_zero]

alias ⟨_, sqrt_pos_of_pos⟩ := sqrt_pos

attribute [bound] sqrt_pos_of_pos

end NNReal

namespace Real

/-- The square root of a real number. This returns 0 for negative inputs.

This has notation `√x`. Note that `√x⁻¹` is parsed as `√(x⁻¹)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a31b281af483b92946afebaf5e7233b410a7e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
