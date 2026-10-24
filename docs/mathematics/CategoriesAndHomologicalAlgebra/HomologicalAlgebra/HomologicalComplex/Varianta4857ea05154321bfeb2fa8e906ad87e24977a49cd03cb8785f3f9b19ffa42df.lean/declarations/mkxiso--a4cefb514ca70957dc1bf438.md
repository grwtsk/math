# mkXIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd5fc12df243fc7dfe9517d69d1ab095096de9f62edd8b4df426665abd43b0f4",
  "kind": "def",
  "lexical_name": "mkXIso",
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
  "slug": "mkxiso--a4cefb514ca70957dc1bf438",
  "source": {
    "blob": "50646b814429df3f77ee4be826053853b54d6c64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 754,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4cefb514ca70957dc1bf4389ea87d94f3f79358f6c07e63680024fd279c7563",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd5fc12df243fc7dfe9517d69d1ab095096de9f62edd8b4df426665abd43b0f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkXIso (n : ℕ) :
    (mk X₀ X₁ X₂ d₀ d₁ s succ).X (n + 3) ≅
      (succ (ShortComplex.mk _ _ ((mk X₀ X₁ X₂ d₀ d₁ s succ).d_comp_d (n + 2) (n + 1) n))).1 :=
  eqToIso (by
    rw [← mk_congr_succ_X₃ succ
      (mkAux_eq_shortComplex_mk_d_comp_d X₀ X₁ X₂ d₀ d₁ s succ n)]
    rfl)

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50646b814429df3f77ee4be826053853b54d6c64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
