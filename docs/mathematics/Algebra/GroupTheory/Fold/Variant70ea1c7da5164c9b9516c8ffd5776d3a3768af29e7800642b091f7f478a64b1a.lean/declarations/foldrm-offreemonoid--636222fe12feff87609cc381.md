# foldrM.ofFreeMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e332a1eec11e7e8761d9bab969656305379562b7ef2b54a97e7b3d0b37a78b68",
  "kind": "def",
  "lexical_name": "foldrM.ofFreeMonoid",
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
  "slug": "foldrm-offreemonoid--636222fe12feff87609cc381",
  "source": {
    "blob": "eb44ef23c3bbda5f0f35db8b80ea017410fb94c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 175,
    "path": "GRWTSK/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:636222fe12feff87609cc38155623fdb55345026693909007efa9a5cd0cc84aa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e332a1eec11e7e8761d9bab969656305379562b7ef2b54a97e7b3d0b37a78b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foldrM.ofFreeMonoid [LawfulMonad m] (f : α → β → m β) : FreeMonoid α →* Monoid.foldrM m β where
  toFun xs := flip (List.foldrM f) (FreeMonoid.toList xs)
  map_one' := rfl
  map_mul' := by intros; funext; apply List.foldrM_append

end Monoid

namespace Traversable

open Monoid Functor

section Defs

variable {α β : Type u} {t : Type u → Type u} [Traversable t]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb44ef23c3bbda5f0f35db8b80ea017410fb94c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
