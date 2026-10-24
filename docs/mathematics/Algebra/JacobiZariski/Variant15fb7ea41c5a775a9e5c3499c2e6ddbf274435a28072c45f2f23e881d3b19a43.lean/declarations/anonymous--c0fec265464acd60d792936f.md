# δ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b129dc3b28bcb9840cd55c6edfcfa3eebce606cc1ecfd1f4c61cb405e332d3db",
  "kind": "def",
  "lexical_name": "δ",
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
  "slug": "anonymous--c0fec265464acd60d792936f",
  "source": {
    "blob": "769f0651401d0624885f2ff0a06ea91eff4028b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 321,
    "path": "GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0fec265464acd60d792936fb83e609a677d4eddba67f24d7ae5664691835f19",
  "verification": {
    "reference": "docs/verification/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b129dc3b28bcb9840cd55c6edfcfa3eebce606cc1ecfd1f4c61cb405e332d3db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def δ :
    Q.toExtension.H1Cotangent →ₗ[T] T ⊗[S] Ω[S⁄R] :=
  SnakeLemma.δ'
    (P.toExtension.cotangentComplex.baseChange T)
    (Q.comp P).toExtension.cotangentComplex
    Q.toExtension.cotangentComplex
    ((Extension.Cotangent.map (toComp Q P).toExtensionHom).liftBaseChange T)
    (Extension.Cotangent.map (ofComp Q P).toExtensionHom)
    (Cotangent.exact Q P)
    ((Extension.CotangentSpace.map (toComp Q P).toExtensionHom).liftBaseChange T)
    (Extension.CotangentSpace.map (ofComp Q P).toExtensionHom)
    (CotangentSpace.exact Q P)
    (map_comp_cotangentComplex_baseChange Q P)
    (by ext; exact Extension.CotangentSpace.map_cotangentComplex (ofComp Q P).toExtensionHom _)
    Q.toExtension.h1Cotangentι
    (LinearMap.exact_subtype_ker_map _)
    (N₁ := T ⊗[S] P.toExtension.CotangentSpace)
    (P.toExtension.toKaehler.baseChange T)
    (lTensor_exact T P.toExtension.exact_cotangentComplex_toKaehler
      P.toExtension.toKaehler_surjective)
    (Cotangent.surjective_map_ofComp Q P)
    (CotangentSpace.map_toComp_injective Q P)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `769f0651401d0624885f2ff0a06ea91eff4028b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
