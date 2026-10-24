# PrimaryEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08ffaacedc821b06864ff2402f9c64cf8aec8cafe1022a00277b45abfa55c806",
  "kind": "inductive",
  "lexical_name": "PrimaryEdge",
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
  "slug": "primaryedge--ac8b8c9190d6b1169bc4c76b",
  "source": {
    "blob": "62af397a5e54db40a7bdba37a13e4c5221387762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac8b8c9190d6b1169bc4c76b49c6c7ad3e4823d79912db59b70bc4a9a3dcd7eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08ffaacedc821b06864ff2402f9c64cf8aec8cafe1022a00277b45abfa55c806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PrimaryEdge {S : Type u} (P : Specification S) :
    Set S → Set S → Bool → Prop
  | inclusion {I J} : FeasibleProfile P I → FeasibleProfile P J →
      J ⊂ I → PrimaryEdge P I J false
  | domain {I J K} : ProfileTriple P I J K → PrimaryEdge P I K true
  | codomain {I J K} : ProfileTriple P I J K → PrimaryEdge P J K false

/-- Finite directed walks, with repeated edges permitted and parity retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62af397a5e54db40a7bdba37a13e4c5221387762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
