# IntermediateField.coe_isIntegral_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed97b922-69f2-ea05-d92e-79dbcc17dac2",
  "kind": "theorem",
  "lexical_name": "IntermediateField.coe_isIntegral_iff",
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
  "slug": "intermediatefield-coe-isintegral-iff--3cacaec6b2a6294d60ed4c93",
  "source": {
    "blob": "1f2214a63233c85dda2b88c433b57d2144723504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 29,
    "path": "GRWTSK/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cacaec6b2a6294d60ed4c9363bc7d16f16243a2af96f656549d55994711b3ec",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed97b922-69f2-ea05-d92e-79dbcc17dac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.coe_isIntegral_iff {R : Type*} [CommRing R] [Algebra R K] [Algebra R L]
    [IsScalarTower R K L] {x : S} : IsIntegral R (x : L) ↔ IsIntegral R x :=
  isIntegral_algHom_iff (S.val.restrictScalars R) Subtype.val_injective

/-- Turn an algebraic subalgebra into an intermediate field, `Subalgebra.IsAlgebraic` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f2214a63233c85dda2b88c433b57d2144723504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
