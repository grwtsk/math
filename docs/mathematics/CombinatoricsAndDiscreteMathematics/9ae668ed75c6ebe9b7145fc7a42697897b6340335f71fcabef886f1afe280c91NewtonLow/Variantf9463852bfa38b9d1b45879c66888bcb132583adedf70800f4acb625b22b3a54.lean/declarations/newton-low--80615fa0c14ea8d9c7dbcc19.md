# newton_low

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e74d047f-a92b-c5e4-a06c-1ccd25ca94af",
  "kind": "lemma",
  "lexical_name": "newton_low",
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
  "slug": "newton-low--80615fa0c14ea8d9c7dbcc19",
  "source": {
    "blob": "3f3100a1b04dc3ecad3b5c5e7bde697d086027ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80615fa0c14ea8d9c7dbcc191bb9267e18bd81b274f438a5c1850f9befd68078",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e74d047f-a92b-c5e4-a06c-1ccd25ca94af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newton_low (s : Multiset R) :
    (s.map (· ^ 1)).sum = s.esymm 1 ∧
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 ∧
    (s.map (· ^ 3)).sum = s.esymm 1 ^ 3 - 3 * s.esymm 1 * s.esymm 2 + 3 * s.esymm 3 ∧
    (s.map (· ^ 4)).sum = s.esymm 1 ^ 4 - 4 * s.esymm 1 ^ 2 * s.esymm 2 +
      4 * s.esymm 1 * s.esymm 3 + 2 * s.esymm 2 ^ 2 - 4 * s.esymm 4 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rcases ih with ⟨h1,h2,h3,h4⟩
    simp only [Multiset.map_cons, Multiset.sum_cons, h1, h2, h3, h4]
    norm_num only [show 1 = 0 + 1 from rfl, show 2 = 1 + 1 from rfl,
      show 3 = 2 + 1 from rfl, show 4 = 3 + 1 from rfl,
      esymm_cons_succ, esymm_zero]
    constructor
    · ring
    constructor
    · ring
    constructor <;> ring
end FixedPointScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f3100a1b04dc3ecad3b5c5e7bde697d086027ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
