# memᵣ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c75301737c7478f083a42b0383357ef6076b29ef50dd1e3faeefb06576acfa4f",
  "kind": "def",
  "lexical_name": "memᵣ",
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
  "slug": "mem--e5be1d880d1ade0da0a8f69c",
  "source": {
    "blob": "c04ed6a28216678fba851ea8d5670840a4d6459e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5be1d880d1ade0da0a8f69cb4c0f9a1c5570b35cb39aeb8ecdfd4d11928f1c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c75301737c7478f083a42b0383357ef6076b29ef50dd1e3faeefb06576acfa4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def memᵣ (x y : PGame.{u}) : Prop := ∃ b, x ≡ y.moveRight b

@[inherit_doc] scoped infix:50 " ∈ₗ " => PGame.memₗ
@[inherit_doc] scoped infix:50 " ∈ᵣ " => PGame.memᵣ
@[inherit_doc PGame.memₗ] binder_predicate x " ∈ₗ " y:term => `($x ∈ₗ $y)
@[inherit_doc PGame.memᵣ] binder_predicate x " ∈ᵣ " y:term => `($x ∈ᵣ $y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04ed6a28216678fba851ea8d5670840a4d6459e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
