# multiset_cs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9327bf9-323a-f9da-3b2e-7583a9576fc9",
  "kind": "lemma",
  "lexical_name": "multiset_cs",
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
  "slug": "multiset-cs--f0bd117cfcfb4c496beed78a",
  "source": {
    "blob": "2b87ee2ccfaf6e23cd6041cee9aee4e28eef79cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0bd117cfcfb4c496beed78ae1e680832ffdc0daa172a790c80802cb1d01c1fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9327bf9-323a-f9da-3b2e-7583a9576fc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma multiset_cs (s : Multiset ℝ) :
    s.sum ^ 2 ≤ (s.card : ℝ) * (s.map (· ^ 2)).sum := by
  have heq (x : ℝ) : (s.map (fun y => (y + x) ^ 2)).sum =
      (s.card : ℝ) * (x * x) + (2 * s.sum) * x + (s.map (· ^ 2)).sum := by
    induction s using Multiset.induction_on with
    | empty => simp
    | cons y s ih =>
      simp only [Multiset.map_cons, Multiset.sum_cons, Multiset.card_cons,
        Nat.cast_add, Nat.cast_one, ih]
      ring
  have h := discrim_le_zero (a := (s.card : ℝ)) (b := 2 * s.sum)
    (c := (s.map (· ^ 2)).sum) (fun x => by
      rw [← heq]
      exact Multiset.sum_nonneg (by
        intro y hy
        obtain ⟨z, _, rfl⟩ := Multiset.mem_map.mp hy
        positivity))
  unfold discrim at h
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b87ee2ccfaf6e23cd6041cee9aee4e28eef79cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
