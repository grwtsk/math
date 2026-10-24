# ModificationIso.ofComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3a97c193b91fe80f174496211ef3c48d5a8a3027e56517402f8d41dfe407559",
  "kind": "def",
  "lexical_name": "ModificationIso.ofComponents",
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
  "slug": "modificationiso-ofcomponents--f06bfac29a66a6ef01e9afeb",
  "source": {
    "blob": "bc661b5d25c9bcd01547a8f91bc8e55005845c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantecff9469904f7a1f23af48e8e86a9d0626d4d4cf0ab4d1cec3cf053f43e98fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f06bfac29a66a6ef01e9afebfc49343b4307e405ab56bc019f0820c1fc0ae287",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantecff9469904f7a1f23af48e8e86a9d0626d4d4cf0ab4d1cec3cf053f43e98fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3a97c193b91fe80f174496211ef3c48d5a8a3027e56517402f8d41dfe407559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModificationIso.ofComponents (app : ∀ a, η.app a ≅ θ.app a)
    (naturality :
      ∀ {a b} (f : a ⟶ b),
        F.map f ◁ (app b).hom ≫ θ.naturality f = η.naturality f ≫ (app a).hom ▷ G.map f) :
    η ≅ θ where
  hom := { app := fun a => (app a).hom }
  inv :=
    { app := fun a => (app a).inv
      naturality := fun {a b} f => by
        simpa using congr_arg (fun f => _ ◁ (app b).inv ≫ f ≫ (app a).inv ▷ _) (naturality f).symm }

end CategoryTheory.Oplax.OplaxTrans
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantecff9469904f7a1f23af48e8e86a9d0626d4d4cf0ab4d1cec3cf053f43e98fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantecff9469904f7a1f23af48e8e86a9d0626d4d4cf0ab4d1cec3cf053f43e98fa1.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc661b5d25c9bcd01547a8f91bc8e55005845c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
