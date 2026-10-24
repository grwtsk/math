# eval_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4713dc0127aaa564352d8f43b33439c7314bd713",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9509453d-75a2-99cf-6471-8e4e90bd75d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f3ea5c7-00ca-f2be-fb0a-71083d2a18e2",
  "kind": "theorem",
  "lexical_name": "eval_canonical",
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
  "slug": "eval-canonical--abae0030e721407516215c6a",
  "source": {
    "blob": "4713dc0127aaa564352d8f43b33439c7314bd713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abae0030e721407516215c6a9e220d84d01b1b2e38a672d4f7de86316336699f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f3ea5c7-00ca-f2be-fb0a-71083d2a18e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_canonical [DecidableEq α]
    (vars : List α)
    (f : Valuation α → Bool)
    (h : Formula.DependsOn vars f)
    (ν : Valuation α) :
    BDD.eval ν (canonical vars f) = f ν := by
  induction vars generalizing f ν with
  | nil =>
      have hconst : f (fun _ => false) = f ν := by
        apply h
        intro a ha
        cases ha
      change f (fun _ => false) = f ν
      exact hconst
  | cons a vars ih =>
      let low :=
        canonical vars (fun μ => f (Valuation.set μ a false))
      let high :=
        canonical vars (fun μ => f (Valuation.set μ a true))
      have hlow :
          BDD.eval ν low = f (Valuation.set ν a false) := by
        simpa [low] using
          ih
            (fun μ => f (Valuation.set μ a false))
            (dependsOn_set_tail a false h)
            ν
      have hhigh :
          BDD.eval ν high = f (Valuation.set ν a true) := by
        simpa [high] using
          ih
            (fun μ => f (Valuation.set μ a true))
            (dependsOn_set_tail a true h)
            ν
      by_cases heq : low = high
      · have hcanon : canonical (a :: vars) f = low := by
          simp [canonical, low, high, heq]
        rw [hcanon]
        cases hv : ν a
        · have hset := dependsOn_set_eq a false ν h hv
          exact hlow.trans hset
        · have hset := dependsOn_set_eq a true ν h hv
          rw [heq]
          exact hhigh.trans hset
      · have hcanon : canonical (a :: vars) f = .branch a low high := by
          simp [canonical, low, high, heq]
        rw [hcanon]
        cases hv : ν a
        · have hset := dependsOn_set_eq a false ν h hv
          simp [BDD.eval, hv]
          exact hlow.trans hset
        · have hset := dependsOn_set_eq a true ν h hv
          simp [BDD.eval, hv]
          exact hhigh.trans hset

/-- Extensional canonicity for fixed-order reduced ordered BDDs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4713dc0127aaa564352d8f43b33439c7314bd713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
