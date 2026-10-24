# squareDivisorMobiusSum_eq_one_of_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b210cd0-c9aa-2f4c-e61b-972579fdfe3f",
  "kind": "theorem",
  "lexical_name": "squareDivisorMobiusSum_eq_one_of_squarefree",
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
  "slug": "squaredivisormobiussum-eq-one-of-squarefree--6be9e52c510378c4e36c2a1a",
  "source": {
    "blob": "224cedfa623171785bb8c46480e2a00eecd398c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be9e52c510378c4e36c2a1a5594fb8bdbb8956541b84b34d88ccc35b7ca2079",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b210cd0-c9aa-2f4c-e61b-972579fdfe3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareDivisorMobiusSum_eq_one_of_squarefree
    {m : ℕ} (hm : 0 < m) (hsq : Squarefree m) :
    squareDivisorMobiusSum m = 1 := by
  classical
  unfold squareDivisorMobiusSum
  have hm0 : m ≠ 0 := ne_of_gt hm
  have h1 : 1 ∈ m.divisors := Nat.one_mem_divisors.mpr hm0
  rw [Finset.sum_eq_single 1]
  · simp [moebiusReal]
  · intro d hd hne
    by_cases hdd : d * d ∣ m
    · exfalso
      have hu : IsUnit d := hsq d hdd
      exact hne (Nat.isUnit_iff.mp hu)
    · simp [hdd]
  · intro hnot
    exact (hnot h1).elim

/-- Exact squarefree-indicator equality in the squarefree case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224cedfa623171785bb8c46480e2a00eecd398c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
