# StarAlgEquivClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5829004b753b3705151f25a34dfbdf4e8139cb8fdf4aa3531051f734f1d318d",
  "kind": "class",
  "lexical_name": "StarAlgEquivClass",
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
  "slug": "staralgequivclass--e66b298961bae1a052f06f32",
  "source": {
    "blob": "24e32e54040cb901ba28cc014c0d2cb96cd8801f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 712,
    "path": "GRWTSK/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e66b298961bae1a052f06f328ded8dd988a539dc18ba9912f197d54c4546e616",
  "verification": {
    "reference": "docs/verification/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5829004b753b3705151f25a34dfbdf4e8139cb8fdf4aa3531051f734f1d318d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class StarAlgEquivClass (F : Type*) (R : outParam (Type*)) (A : outParam (Type*))
  (B : outParam (Type*)) [Add A] [Mul A] [SMul R A] [Star A] [Add B] [Mul B] [SMul R B]
  [Star B] extends RingEquivClass F A B where
  /-- By definition, a ⋆-algebra equivalence preserves the `star` operation. -/
  map_star : ∀ (f : F) (a : A), f (star a) = star (f a)
  /-- By definition, a ⋆-algebra equivalence commutes with the action of scalars. -/
  map_smul : ∀ (f : F) (r : R) (a : A), f (r • a) = r • f a
#align star_alg_equiv_class StarAlgEquivClass

-- Porting note: no longer needed
---- `R` becomes a metavariable but that's fine because it's an `outParam`
-- attribute [nolint dangerousInstance] StarAlgEquivClass.toRingEquivClass

namespace StarAlgEquivClass

-- Porting note: Made following instance non-dangerous through [...] -> [...] replacement
-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e32e54040cb901ba28cc014c0d2cb96cd8801f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
