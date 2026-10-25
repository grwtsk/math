# HomClass.toHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de6e3b7226f818d5595cc187237bc8221ef735b227a51341cd665b71b2ac5b41",
  "kind": "def",
  "lexical_name": "HomClass.toHom",
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
  "slug": "homclass-tohom--ea84a677d612888c558024b2",
  "source": {
    "blob": "c474f9efb5993f0b4315e89703476db29a24b445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 591,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea84a677d612888c558024b2a40e763478387fba07626e822ee3be61dcef7c03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de6e3b7226f818d5595cc187237bc8221ef735b227a51341cd665b71b2ac5b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HomClass.toHom {F M N} [L.Structure M] [L.Structure N] [FunLike F M fun _ => N]
    [HomClass L F M N] : F → M →[L] N := fun φ =>
  ⟨φ, HomClass.map_fun φ, HomClass.map_rel φ⟩
#align first_order.language.hom_class.to_hom FirstOrder.Language.HomClass.toHom

namespace Embedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c474f9efb5993f0b4315e89703476db29a24b445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
