# halting_proof_cost_bound_no_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "834f4aaa9b4afb610a236245918c3fdb87fe7082",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df80e599-96d6-a54a-430c-c785e3095816",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0fa6fdc-d505-46af-822d-eb1b0fe09667",
  "kind": "theorem",
  "lexical_name": "halting_proof_cost_bound_no_go",
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
  "slug": "halting-proof-cost-bound-no-go--e686d295035b44b51f62f5eb",
  "source": {
    "blob": "834f4aaa9b4afb610a236245918c3fdb87fe7082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e686d295035b44b51f62f5eb0a669c689ed7b4f7c8bbef8164c479662aff0350",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0fa6fdc-d505-46af-822d-eb1b0fe09667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halting_proof_cost_bound_no_go {input : ℕ}
    (system : EffectiveHaltingProofCost input) (bound : ℕ → ℕ)
    (boundComputable : Computable bound) : ¬UniversalHaltingProofBound system bound := by
  intro dominates
  have searchComputable : Computable (fun program =>
      system.searchBall (program, bound (system.descriptionSize program))) :=
    system.searchBallComputable.comp
      (Computable.id.pair (boundComputable.comp system.descriptionSizeComputable))
  apply ComputablePred.halting_problem input
  apply ComputablePred.computable_iff.mpr
  refine ⟨fun program => system.searchBall (program, bound (system.descriptionSize program)),
    searchComputable, ?_⟩
  funext program
  apply propext
  constructor
  · intro halts
    exact (system.searchBallExact program _).mpr (dominates program halts)
  · intro accepted
    obtain ⟨certificate, _, hcertificate⟩ := (system.searchBallExact program _).mp accepted
    exact system.sound program certificate hcertificate

/-- Extensional future behavior of program codes is semantic equality of partial functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834f4aaa9b4afb610a236245918c3fdb87fe7082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
