# has_descent_of_rayleigh_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f7f0c0d-3bb3-6a0e-959d-4a108a08affd",
  "kind": "theorem",
  "lexical_name": "has_descent_of_rayleigh_path",
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
  "slug": "has-descent-of-rayleigh-path--72cba121b8a95443a5ff1287",
  "source": {
    "blob": "5ccefab6bacf618fecf4182f542b2367444656c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 302,
    "path": "GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72cba121b8a95443a5ff1287f740d129e70246dc3acf58b46b76ee7be524d71c",
  "verification": {
    "reference": "docs/verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f7f0c0d-3bb3-6a0e-959d-4a108a08affd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_descent_of_rayleigh_path (step : State → State → Prop) (value : State → ℝ)
    (x : State) (path : ℝ → State) (a d ell H : ℝ) {radius : ℝ} (hradius : 0 < radius)
    (hvariation : a ≠ 0 ∨ d < 0)
    (hadmissible : ∀ e, |e| < radius → step x (path e))
    (haccount : ∀ e, |e| < radius → value (path e) - value x = increment a d ell H e) :
    HasDescent step value x := by
  obtain ⟨e, _he0, hre, _hden, hlt⟩ := (small_rayleigh_descent_iff a d ell H hradius).2 hvariation
  refine ⟨path e, hadmissible e hre, ?_⟩
  exact sub_neg.mp ((haccount e hre).trans_lt hlt)

end FormalResearch.RiemannHypothesis.BranchDescentWitness
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccefab6bacf618fecf4182f542b2367444656c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
