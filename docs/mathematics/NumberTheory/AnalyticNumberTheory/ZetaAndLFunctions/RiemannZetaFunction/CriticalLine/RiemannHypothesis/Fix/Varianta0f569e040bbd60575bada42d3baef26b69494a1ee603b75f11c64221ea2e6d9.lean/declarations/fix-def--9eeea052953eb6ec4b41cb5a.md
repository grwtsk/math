# fix_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d637d567cc6f692462245b1d31df02bef84060e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0f569e040bbd60575bada42d3baef26b69494a1ee603b75f11c64221ea2e6d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0de47e5-226b-47c1-9ad1-a15f814f5c4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7ed1106-c8cd-2770-94fd-b55e446991f0",
  "kind": "theorem",
  "lexical_name": "fix_def",
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
  "slug": "fix-def--9eeea052953eb6ec4b41cb5a",
  "source": {
    "blob": "d637d567cc6f692462245b1d31df02bef84060e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Varianta0f569e040bbd60575bada42d3baef26b69494a1ee603b75f11c64221ea2e6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eeea052953eb6ec4b41cb5a4a59107b3f04aa28397ff623ef3d82ad4b294608",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Varianta0f569e040bbd60575bada42d3baef26b69494a1ee603b75f11c64221ea2e6d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ed1106-c8cd-2770-94fd-b55e446991f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem fix_def {x : α} (h' : ∃ i, (Fix.approx f i x).Dom) :
    Part.fix f x = Fix.approx f (Nat.succ (Nat.find h')) x := by
  let p := fun i : ℕ => (Fix.approx f i x).Dom
  have : p (Nat.find h') := Nat.find_spec h'
  generalize hk : Nat.find h' = k
  replace hk : Nat.find h' = k + (@Upto.zero p).val := hk
  rw [hk] at this
  revert hk
  dsimp [Part.fix]; rw [assert_pos h']; revert this
  generalize Upto.zero = z; intro _this hk
  suffices ∀ x' hwf,
    WellFounded.fix hwf (fixAux f) z x' = Fix.approx f (succ k) x'
    from this _ _
  induction k generalizing z with
  | zero =>
    intro x' _
    rw [Fix.approx, WellFounded.fix_eq, fixAux]
    congr
    ext x : 1
    rw [assert_neg]
    · rfl
    · rw [Nat.zero_add] at _this
      simpa only [not_not, Coe]
  | succ n n_ih =>
    intro x' _
    rw [Fix.approx, WellFounded.fix_eq, fixAux]
    congr
    ext : 1
    have hh : ¬(Fix.approx f z.val x).Dom := by
      apply Nat.find_min h'
      lia
    rw [succ_add_eq_add_succ] at _this hk
    rw [assert_pos hh, n_ih (Upto.succ z hh) _this hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Varianta0f569e040bbd60575bada42d3baef26b69494a1ee603b75f11c64221ea2e6d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Varianta0f569e040bbd60575bada42d3baef26b69494a1ee603b75f11c64221ea2e6d9.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d637d567cc6f692462245b1d31df02bef84060e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
