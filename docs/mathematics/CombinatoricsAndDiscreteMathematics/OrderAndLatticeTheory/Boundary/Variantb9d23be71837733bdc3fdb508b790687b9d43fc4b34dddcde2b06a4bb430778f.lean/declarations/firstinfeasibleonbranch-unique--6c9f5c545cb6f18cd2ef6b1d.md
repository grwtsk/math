# firstInfeasibleOnBranch_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7f5f832b383095fc3af710e8937a3f5755673b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd909d7c-f996-bced-1cdd-62916823f90b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b080681d-74fa-5575-9209-73bba55601c9",
  "kind": "theorem",
  "lexical_name": "firstInfeasibleOnBranch_unique",
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
  "slug": "firstinfeasibleonbranch-unique--6c9f5c545cb6f18cd2ef6b1d",
  "source": {
    "blob": "c7f5f832b383095fc3af710e8937a3f5755673b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c9f5c545cb6f18cd2ef6b1dda70257d1aa089f00b51dc683fdb3de511e871b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b080681d-74fa-5575-9209-73bba55601c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstInfeasibleOnBranch_unique
    {n : Nat}
    {feasible : Fin n → Prop}
    {left right : Fin n}
    (leftFirst :
      FirstInfeasibleOnBranch feasible left)
    (rightFirst :
      FirstInfeasibleOnBranch feasible right) :
    left = right := by
  apply le_antisymm
  · by_contra leftNotLeRight
    have rightLtLeft : right < left :=
      lt_of_not_ge leftNotLeRight
    exact rightFirst.1
      (leftFirst.2 right rightLtLeft)
  · by_contra rightNotLeLeft
    have leftLtRight : left < right :=
      lt_of_not_ge rightNotLeLeft
    exact leftFirst.1
      (rightFirst.2 left leftLtRight)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f5f832b383095fc3af710e8937a3f5755673b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
