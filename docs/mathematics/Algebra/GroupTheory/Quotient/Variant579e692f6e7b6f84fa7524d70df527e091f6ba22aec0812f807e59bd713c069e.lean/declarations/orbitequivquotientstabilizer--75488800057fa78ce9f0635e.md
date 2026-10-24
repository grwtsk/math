# orbitEquivQuotientStabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0105922c9e69f7ec3af2806f46b4d175883ee3a1bc0e37e526c5d4be9914f1aa",
  "kind": "def",
  "lexical_name": "orbitEquivQuotientStabilizer",
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
  "slug": "orbitequivquotientstabilizer--75488800057fa78ce9f0635e",
  "source": {
    "blob": "d4df39bc62b6f7bd0db4e947537c0f02a634d019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 170,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75488800057fa78ce9f0635e126da1e0f2f58681e9a5720c8d143d5f6212967f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0105922c9e69f7ec3af2806f46b4d175883ee3a1bc0e37e526c5d4be9914f1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def orbitEquivQuotientStabilizer (b : X) : orbit G b ≃ G ⧸ stabilizer G b :=
  Equiv.symm <|
    Equiv.ofBijective (fun g => ⟨ofQuotientStabilizer G b g, ofQuotientStabilizer_mem_orbit G b g⟩)
      ⟨fun x y hxy => injective_ofQuotientStabilizer G b (by convert! congr_arg Subtype.val hxy),
        fun ⟨_, ⟨g, hgb⟩⟩ => ⟨g, Subtype.ext hgb⟩⟩

/-- Orbit-stabilizer theorem. -/
@[to_additive AddAction.orbitProdStabilizerEquivAddGroup /-- Orbit-stabilizer theorem. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4df39bc62b6f7bd0db4e947537c0f02a634d019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
