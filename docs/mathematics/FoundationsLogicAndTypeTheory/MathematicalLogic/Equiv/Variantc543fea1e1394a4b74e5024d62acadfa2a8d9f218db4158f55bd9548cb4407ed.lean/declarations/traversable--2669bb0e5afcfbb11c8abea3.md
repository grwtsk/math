# traversable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed851c189ef77c149292763207cc5f963134931d29d4c9776a3e8bd9214a2520",
  "kind": "def",
  "lexical_name": "traversable",
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
  "slug": "traversable--2669bb0e5afcfbb11c8abea3",
  "source": {
    "blob": "b7bee07b1613023838a9785a16b9cceb316186e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2669bb0e5afcfbb11c8abea37dddd8e459cbcf242e9d5366876cad9285d14d3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed851c189ef77c149292763207cc5f963134931d29d4c9776a3e8bd9214a2520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def traversable : Traversable t' where
  toFunctor := Equiv.functor eqv
  traverse := Equiv.traverse eqv

end Traversable

section Equiv

variable {t t' : Type u → Type u} (eqv : ∀ α, t α ≃ t' α)

-- Is this to do with the fact it lives in `Type (u+1)` not `Prop`?
variable [Traversable t] [LawfulTraversable t]
variable {F G : Type u → Type u} [Applicative F] [Applicative G]
variable [LawfulApplicative F] [LawfulApplicative G]
variable (η : ApplicativeTransformation F G)
variable {α β γ : Type u}

open LawfulTraversable Functor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7bee07b1613023838a9785a16b9cceb316186e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
