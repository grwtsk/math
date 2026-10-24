# orbitAtom_quarterTurn_original

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7c2d118-f928-6375-1640-554eecc6d03f",
  "kind": "theorem",
  "lexical_name": "orbitAtom_quarterTurn_original",
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
  "slug": "orbitatom-quarterturn-original--3e663e52f6595f8885e30696",
  "source": {
    "blob": "b34d3f537f22944a1d9b3f14e73a6e8851f46f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e663e52f6595f8885e3069622cd30c09f54f544baa5abd5c66343fc2caa3f07",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7c2d118-f928-6375-1640-554eecc6d03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbitAtom_quarterTurn_original {q : ComplexL2} (hq : reflection q = q)
    (ε : Bool) (m : ℕ) :
    quarterTurn (orbitAtom q ε false m) = -orbitAtom q (!ε) true m := by
  rw [quarterTurn_apply, orbitAtom_duality]
  exact orbitAtom_reflection_dual hq ε m

/-- J=RT sends a dual channel to the oppositely shifted original channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34d3f537f22944a1d9b3f14e73a6e8851f46f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
