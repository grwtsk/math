# heq_const_of_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "079f58199478f68b34bc94e3e1d719e2a5c67805",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce39aac7-5fc7-8fdf-9fe1-4de5e4948a77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9f6f818-a580-63d0-dd8f-b75676f3f35d",
  "kind": "theorem",
  "lexical_name": "heq_const_of_unique",
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
  "slug": "heq-const-of-unique--3634507d94944868af4a799d",
  "source": {
    "blob": "079f58199478f68b34bc94e3e1d719e2a5c67805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3634507d94944868af4a799d9a4c2eb4ca36bb4e9692837ef69ea26b97a6ba3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9f6f818-a580-63d0-dd8f-b75676f3f35d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heq_const_of_unique [Unique α] {β : α → Sort v} (f : ∀ a, β a) :
    HEq f (Function.const α (f default)) :=
  (Function.hfunext rfl) fun i _ _ ↦ by rw [Subsingleton.elim i default]; rfl
#align heq_const_of_unique heq_const_of_unique

namespace Function

variable {f : α → β}

/-- If the codomain of an injective function is a subsingleton, then the domain
is a subsingleton as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `079f58199478f68b34bc94e3e1d719e2a5c67805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
