# preorderOfModels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d47318e78fc33e65ab954a0228e2241ba01feb268bf349292119f909f83b175b",
  "kind": "def",
  "lexical_name": "preorderOfModels",
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
  "slug": "preorderofmodels--385b625acc0b4e29c88e3910",
  "source": {
    "blob": "53ed432b63cfb2f301ff0b3411f7c47ed2e05292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:385b625acc0b4e29c88e391078e53a745e50587de51311616a14784e48e62045",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d47318e78fc33e65ab954a0228e2241ba01feb268bf349292119f909f83b175b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preorderOfModels [h : M ⊨ L.preorderTheory] : Preorder M where
  __ := L.leOfStructure M
  le_refl := (Relations.realize_reflexive.mp <|
    Theory.model_iff _ |>.mp h _ <| by simp [preorderTheory]).refl
  le_trans := (Relations.realize_transitive.mp <|
    Theory.model_iff _ |>.mp h _ <| by simp [preorderTheory]).trans

/-- Any model of a theory of partial orders is a partial order. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53ed432b63cfb2f301ff0b3411f7c47ed2e05292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
