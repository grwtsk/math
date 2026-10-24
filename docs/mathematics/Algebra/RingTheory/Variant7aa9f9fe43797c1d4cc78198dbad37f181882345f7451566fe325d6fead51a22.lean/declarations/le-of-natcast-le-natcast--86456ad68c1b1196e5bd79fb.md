# le_of_natCast_le_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4c6049d-7199-82cf-9a50-45ae99200564",
  "kind": "theorem",
  "lexical_name": "le_of_natCast_le_natCast",
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
  "slug": "le-of-natcast-le-natcast--86456ad68c1b1196e5bd79fb",
  "source": {
    "blob": "350cbc6d49b24051540cf5d302d0b3db629d8b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 70,
    "path": "GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86456ad68c1b1196e5bd79fb4096619e01e0b09a5010e3d5177a2c4e855a383b",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4c6049d-7199-82cf-9a50-45ae99200564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_natCast_le_natCast (a b : Nat) : (a : R) ≤ (b : R) → a ≤ b := by
  induction a generalizing b <;> cases b <;> simp
  next n ih =>
    simp [Semiring.natCast_succ, Semiring.natCast_zero]
    intro h
    have : (n:R) ≤ 0 := by
      have := OrderedRing.zero_lt_one (R := R)
      replace this := OrderedAdd.add_le_right (M := R) (n:R) (Std.le_of_lt this)
      rw [Semiring.add_zero] at this
      exact Std.IsPreorder.le_trans _ _ _ this h
    replace ih := ih 0
    simp [Semiring.natCast_zero] at ih
    replace ih := ih this
    subst n
    clear this
    have := OrderedRing.zero_lt_one (R := R)
    rw [Semiring.natCast_zero, Semiring.add_comm, Semiring.add_zero] at h
    replace this := Std.lt_of_lt_of_le this h
    have := Preorder.lt_irrefl (0:R)
    contradiction
  next ih m =>
    simp [Semiring.natCast_succ]
    intro h
    have := OrderedAdd.add_le_left_iff _ |>.mpr h
    exact ih _ this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `350cbc6d49b24051540cf5d302d0b3db629d8b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
