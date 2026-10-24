# npowBinRec.go_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ef7136b-847b-fffc-e3f4-0665bd7686a6",
  "kind": "theorem",
  "lexical_name": "npowBinRec.go_spec",
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
  "slug": "npowbinrec-go-spec--ed54e4d3c66b4c2533ba450d",
  "source": {
    "blob": "f9f2ec94a6747b6d499ca6734187796875a2acaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 312,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed54e4d3c66b4c2533ba450dd5fc0b6cdfc81c69a00d6560198a3d037ffa1bc0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ef7136b-847b-fffc-e3f4-0665bd7686a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem npowBinRec.go_spec {M : Type*} [Semigroup M] [One M] (k : ℕ) (m n : M) :
    npowBinRec.go (k + 1) m n = m * npowRec' (k + 1) n := by
  unfold go
  generalize hk : k + 1 = k'
  replace hk : k' ≠ 0 := by lia
  induction k' using Nat.binaryRecFromOne generalizing n m with
  | zero => simp at hk
  | one => simp [npowRec']
  | bit b k' k'0 ih =>
    rw [Nat.binaryRec_eq _ _ (Or.inl rfl), ih _ _ k'0]
    cases b <;> simp only [Nat.bit, Bool.cond_false, Bool.cond_true, npowRec'_two_mul]
    rw [npowRec'_succ (by lia), npowRec'_two_mul, ← npowRec'_two_mul,
      ← npowRec'_mul_comm (by lia), mul_assoc]

/--
An abbreviation for `npowRec` with an additional typeclass assumption on associativity
so that we can use `@[csimp]` to replace it with an implementation by repeated squaring
in compiled code.
-/
@[to_additive
/-- An abbreviation for `nsmulRec` with an additional typeclass assumptions on associativity
so that we can use `@[csimp]` to replace it with an implementation by repeated doubling in compiled
code as an automatic parameter. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f2ec94a6747b6d499ca6734187796875a2acaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
