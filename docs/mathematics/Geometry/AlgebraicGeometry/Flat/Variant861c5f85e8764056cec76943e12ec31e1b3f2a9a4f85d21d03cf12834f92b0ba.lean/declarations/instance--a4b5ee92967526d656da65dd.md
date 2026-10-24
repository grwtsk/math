# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9537d8a8d84c1378feb3711a8d201145cff23523f44b8867fe196adcfd599018",
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
  "slug": "instance--a4b5ee92967526d656da65dd",
  "source": {
    "blob": "19107953dbbc9a01f97436c58454ea4ee2f3053f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 91,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4b5ee92967526d656da65ddd53b9b010c5d5f5489ee53784cc1ef588eec73ca",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9537d8a8d84c1378feb3711a8d201145cff23523f44b8867fe196adcfd599018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X : Scheme.{u}} {ι : Type v} [Small.{u} ι] {Y : ι → Scheme.{u}} {f : ∀ i, Y i ⟶ X}
    [∀ i, Flat (f i)] : Flat (Sigma.desc f) :=
  IsLocalAtSource.sigmaDesc (fun _ ↦ inferInstance)

/-- A surjective, quasi-compact, flat morphism is a quotient map. -/
@[stacks 02JY]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19107953dbbc9a01f97436c58454ea4ee2f3053f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
