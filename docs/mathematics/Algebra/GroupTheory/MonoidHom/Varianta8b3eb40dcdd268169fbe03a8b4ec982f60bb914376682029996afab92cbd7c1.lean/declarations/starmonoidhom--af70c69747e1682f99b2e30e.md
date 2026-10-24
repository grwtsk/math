# StarMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2378d1b3c87359982a63ba96c88284c1ef3f67b90f25c4f1129ca3ad5e2ebba",
  "kind": "structure",
  "lexical_name": "StarMonoidHom",
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
  "slug": "starmonoidhom--af70c69747e1682f99b2e30e",
  "source": {
    "blob": "774ac776e5067a176567478cdbea1ed6fc505e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidHom/Varianta8b3eb40dcdd268169fbe03a8b4ec982f60bb914376682029996afab92cbd7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af70c69747e1682f99b2e30ebed45707a06a0c18ba4776409da116feb104d481",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidHom/Varianta8b3eb40dcdd268169fbe03a8b4ec982f60bb914376682029996afab92cbd7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2378d1b3c87359982a63ba96c88284c1ef3f67b90f25c4f1129ca3ad5e2ebba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StarMonoidHom (A B : Type*) [Monoid A] [Star A] [Monoid B] [Star B]
    extends A →* B where
  /-- By definition, a star monoid homomorphism preserves the `star` operation. -/
  map_star' : ∀ a : A, toFun (star a) = star (toFun a)

/-- `α →⋆* β` denotes the type of star monoid homomorphisms from `α` to `β`. -/
infixr:25 " →⋆* " => StarMonoidHom

/-- Reinterpret a star monoid homomorphism as a monoid homomorphism
by forgetting the interaction with the star operation. -/
add_decl_doc StarMonoidHom.toMonoidHom

namespace StarMonoidHom

variable [Monoid A] [Star A] [Monoid B] [Star B]

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidHom/Varianta8b3eb40dcdd268169fbe03a8b4ec982f60bb914376682029996afab92cbd7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidHom/Varianta8b3eb40dcdd268169fbe03a8b4ec982f60bb914376682029996afab92cbd7c1.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `774ac776e5067a176567478cdbea1ed6fc505e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
