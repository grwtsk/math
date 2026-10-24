# chineseRemainderOfList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9860722691a0d94d630108eaa575eb2e33660d5672c7544eb4cf1a76bff0146",
  "kind": "def",
  "lexical_name": "chineseRemainderOfList",
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
  "slug": "chineseremainderoflist--f34193fae8150c7261aa999d",
  "source": {
    "blob": "2cb39a1101ea722e223d526dc4d50533a664968f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f34193fae8150c7261aa999da4140bd9fbb086d1bb6d143cdd75d2f5d2a9315c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9860722691a0d94d630108eaa575eb2e33660d5672c7544eb4cf1a76bff0146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chineseRemainderOfList : (l : List ι) → l.Pairwise (Coprime on s) →
    { k // ∀ i ∈ l, k ≡ a i [MOD s i] }
  | [],     _  => ⟨0, by simp⟩
  | i :: l, co => by
    have : Coprime (s i) (l.map s).prod := by
      simp only [coprime_list_prod_right_iff, List.mem_map, forall_exists_index, and_imp,
        forall_apply_eq_imp_iff₂]
      intro j hj
      exact (List.pairwise_cons.mp co).1 j hj
    have ih := chineseRemainderOfList l co.of_cons
    have k := chineseRemainder this (a i) ih
    use k
    simp only [List.mem_cons, forall_eq_or_imp, k.prop.1, true_and]
    intro j hj
    exact ((modEq_list_prod_iff' co.of_cons).mp k.prop.2 j hj).trans (ih.prop j hj)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cb39a1101ea722e223d526dc4d50533a664968f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
