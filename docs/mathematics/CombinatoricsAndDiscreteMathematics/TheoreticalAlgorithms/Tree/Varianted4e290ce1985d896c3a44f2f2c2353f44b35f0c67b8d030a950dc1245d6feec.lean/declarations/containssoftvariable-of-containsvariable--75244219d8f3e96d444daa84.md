# containsSoftVariable_of_containsVariable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26f28251-ad6e-19aa-6c4d-460b65cf0aa9",
  "kind": "theorem",
  "lexical_name": "containsSoftVariable_of_containsVariable",
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
  "slug": "containssoftvariable-of-containsvariable--75244219d8f3e96d444daa84",
  "source": {
    "blob": "5242ccb762a26174e278a2e82fb40b5ea9190747",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75244219d8f3e96d444daa84d6313e28709c81d95dfdb9da5c51db84b9e2237a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26f28251-ad6e-19aa-6c4d-460b65cf0aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem containsSoftVariable_of_containsVariable
    {ρ : EdgeRelaxation.FuzzyTree.Valuation α}
    (hρ : ∀ a : α,
      ¬ EdgeRelaxation.EpsilonDensity.IsCrisp (ρ a)) :
    ∀ t : Tree α,
      ContainsVariable t →
        ContainsSoftVariable ρ t
  | .var a, _ => hρ a
  | .falsum, h => False.elim h
  | .truth, h => False.elim h
  | .neg p, h =>
      containsSoftVariable_of_containsVariable hρ p h
  | .conj p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .disj p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .impl p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .eqv p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .nand p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5242ccb762a26174e278a2e82fb40b5ea9190747` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
