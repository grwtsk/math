# ofFinset_indep'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:640f74f7-6d13-5f08-d65e-d1c795d70c16",
  "kind": "theorem",
  "lexical_name": "ofFinset_indep'",
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
  "slug": "offinset-indep--dccaf5046c5f263b1382db2e",
  "source": {
    "blob": "043149e64bdeee6918304be3de3391dc409ae8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 472,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dccaf5046c5f263b1382db2e24519b61c6d172b03d24751d4525849cda52bbab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:640f74f7-6d13-5f08-d65e-d1c795d70c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFinset_indep' [DecidableEq α] (E : Set α) Indep indep_empty indep_subset indep_aug
    subset_ground {I : Set α} : (IndepMatroid.ofFinset
      E Indep indep_empty indep_subset indep_aug subset_ground).Indep I ↔
        ∀ (J : Finset α), (J : Set α) ⊆ I → Indep J := by
  simp only [IndepMatroid.ofFinset, ofFinitaryCardAugment_indep]

end IndepMatroid

section IsBase

namespace Matroid

/-- Construct an `Matroid` from an independence predicate that agrees with that of some matroid `M`.
  This is computable even if `M` is only known existentially, or when `M` exists for different
  reasons in different cases. This can also be used to change the independence predicate to a
  more useful definitional form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `043149e64bdeee6918304be3de3391dc409ae8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
