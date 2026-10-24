# exists_bounded_zero_one_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcfb262f-e252-4cb3-d230-dc00f3bd9b38",
  "kind": "theorem",
  "lexical_name": "exists_bounded_zero_one_of_closed",
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
  "slug": "exists-bounded-zero-one-of-closed--84b72a7bcedcd945a880ad71",
  "source": {
    "blob": "4b5070e0def1bfd2483c72a99db23f26d4168ddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant897d177c0ae030d6ecaed9dac3b29476473b1d8b32ea2fc35e7bb944b9e67ac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84b72a7bcedcd945a880ad7126be453ac8863af4901b1cbba2d109d67ad1e566",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsBounded/Variant897d177c0ae030d6ecaed9dac3b29476473b1d8b32ea2fc35e7bb944b9e67ac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcfb262f-e252-4cb3-d230-dc00f3bd9b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_bounded_zero_one_of_closed {X : Type*} [TopologicalSpace X] [NormalSpace X]
    {s t : Set X} (hs : IsClosed s) (ht : IsClosed t) (hd : Disjoint s t) :
    ∃ f : X →ᵇ ℝ, EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 :=
  let ⟨f, hfs, hft, hf⟩ := exists_continuous_zero_one_of_closed hs ht hd
  ⟨⟨f, 1, fun _ _ => Real.dist_le_of_mem_Icc_01 (hf _) (hf _)⟩, hfs, hft, hf⟩
#align exists_bounded_zero_one_of_closed exists_bounded_zero_one_of_closed

/-- Urysohn's lemma: if `s` and `t` are two disjoint closed sets in a normal topological space `X`,
and `a ≤ b` are two real numbers, then there exists a continuous function `f : X → ℝ` such that

* `f` equals `a` on `s`;
* `f` equals `b` on `t`;
* `a ≤ f x ≤ b` for all `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsBounded/Variant897d177c0ae030d6ecaed9dac3b29476473b1d8b32ea2fc35e7bb944b9e67ac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant897d177c0ae030d6ecaed9dac3b29476473b1d8b32ea2fc35e7bb944b9e67ac6.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5070e0def1bfd2483c72a99db23f26d4168ddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
