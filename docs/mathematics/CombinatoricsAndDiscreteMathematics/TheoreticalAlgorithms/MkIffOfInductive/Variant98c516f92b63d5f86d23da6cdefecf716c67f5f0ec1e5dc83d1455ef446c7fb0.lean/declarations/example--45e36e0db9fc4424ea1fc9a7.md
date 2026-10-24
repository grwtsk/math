# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:287fe56d108c3bf3da82e3279656bd5c18fca85ddf5cddf5382efb678270e0af",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--45e36e0db9fc4424ea1fc9a7",
  "source": {
    "blob": "2219453136b3c298d05bd36571dd8140fea066cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 5,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MkIffOfInductive/Variant98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45e36e0db9fc4424ea1fc9a724b58fda7fdaf3dbd6a9ca83a79fce834c0778a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MkIffOfInductive/Variant98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:287fe56d108c3bf3da82e3279656bd5c18fca85ddf5cddf5382efb678270e0af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {α : Type _} (R : α → α → Prop) (a : α) (al : List α) :
    List.Chain R a al ↔
      al = List.nil ∨ ∃ (b : α) (l : List α), R a b ∧ List.Chain R b l ∧ al = b :: l :=
  test.chain_iff R a al

-- check that the statement prints nicely
/--
info: test.chain_iff.{u_1} {α : Type u_1} (R : α → α → Prop) (a✝ : α) (a✝¹ : List α) :
  List.Chain R a✝ a✝¹ ↔ a✝¹ = [] ∨ ∃ b l, R a✝ b ∧ List.Chain R b l ∧ a✝¹ = b :: l
-/
#guard_msgs in
#check test.chain_iff

mk_iff_of_inductive_prop False    test.false_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MkIffOfInductive/Variant98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MkIffOfInductive/Variant98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2219453136b3c298d05bd36571dd8140fea066cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
