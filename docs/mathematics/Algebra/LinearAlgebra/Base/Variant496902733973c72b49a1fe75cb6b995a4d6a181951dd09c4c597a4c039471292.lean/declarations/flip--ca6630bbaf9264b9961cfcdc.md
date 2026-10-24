# flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4d243d15605e44714b9422a8572bbc5fe17057fae8b529e7b95fd13a4ce1fb2",
  "kind": "def",
  "lexical_name": "flip",
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
  "slug": "flip--ca6630bbaf9264b9961cfcdc",
  "source": {
    "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca6630bbaf9264b9961cfcdc8ed6d504ade3062042d0a3d8ecb56e21a22a11c0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4d243d15605e44714b9422a8572bbc5fe17057fae8b529e7b95fd13a4ce1fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] protected def flip :
    P.flip.Base where
  support := b.support
  linearIndepOn_root := b.linearIndepOn_coroot
  linearIndepOn_coroot := b.linearIndepOn_root
  root_mem_or_neg_mem := b.coroot_mem_or_neg_mem
  coroot_mem_or_neg_mem := b.root_mem_or_neg_mem

section Map

variable {ι₂ M₂ N₂ : Type*} [AddCommGroup M₂] [Module R M₂] [AddCommGroup N₂] [Module R N₂]
  {P₂ : RootPairing ι₂ R M₂ N₂} (e : P.Equiv P₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e95b084476d1b16dd82d35a3bed2517c25b1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
