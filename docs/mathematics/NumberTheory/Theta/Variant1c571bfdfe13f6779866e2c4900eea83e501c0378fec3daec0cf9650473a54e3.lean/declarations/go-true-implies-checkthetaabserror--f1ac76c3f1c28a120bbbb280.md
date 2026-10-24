# go_true_implies_checkThetaAbsError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f562a5558327331f1a7cee4f2a9626fce718a84c492a41719975b29c129bf6e2",
  "kind": "def",
  "lexical_name": "go_true_implies_checkThetaAbsError",
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
  "slug": "go-true-implies-checkthetaabserror--f1ac76c3f1c28a120bbbb280",
  "source": {
    "blob": "f8fc81ae9f509248c72474b0c860dbc05c8b3907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 299,
    "path": "GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1ac76c3f1c28a120bbbb280e98c410a61a1f529bf0b8f3eab17b6773bcb8ee0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f562a5558327331f1a7cee4f2a9626fce718a84c492a41719975b29c129bf6e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def go_true_implies_checkThetaAbsError
    (limit : Nat) (bound : Rat) (depth n : Nat) (hn_pos : 0 < n)
    (accUB accLB : Rat)
    (haccUB : accUB = thetaUB (n - 1) depth)
    (haccLB : accLB = thetaLB (n - 1) depth)
    (hgo : checkAllThetaAbsError.go limit bound depth n accUB accLB = true)
    (m : Nat) (hm : n <= m) (hmb : m <= limit) :
    checkThetaAbsError m bound depth = true := by
  unfold checkAllThetaAbsError.go at hgo
  split at hgo
  case isTrue hn_gt =>
    omega
  case isFalse hn_le =>
    change (if decide (accUB + logPrimeUB n depth - (n : Rat) <= bound) &&
               decide ((n : Rat) - (accLB + logPrimeLB n depth) <= bound) then
      checkAllThetaAbsError.go limit bound depth (n + 1)
        (accUB + logPrimeUB n depth) (accLB + logPrimeLB n depth)
      else false) = true at hgo
    split at hgo
    case isTrue hcheck =>
      rw [Bool.and_eq_true] at hcheck
      obtain ⟨hcheckUB, hcheckLB⟩ := hcheck
      rw [decide_eq_true_eq] at hcheckUB hcheckLB
      have hthetaUB_n : thetaUB n depth - (n : Rat) <= bound := by
        rw [thetaUB_eq_acc n hn_pos depth, ← haccUB]; exact hcheckUB
      have hthetaLB_n : (n : Rat) - thetaLB n depth <= bound := by
        rw [thetaLB_eq_acc n hn_pos depth, ← haccLB]; exact hcheckLB
      by_cases hmn : m = n
      case pos =>
        subst hmn
        unfold checkThetaAbsError
        rw [Bool.and_eq_true]
        exact ⟨decide_eq_true_eq.mpr hthetaUB_n, decide_eq_true_eq.mpr hthetaLB_n⟩
      case neg =>
        exact go_true_implies_checkThetaAbsError limit bound depth (n + 1) (by omega)
          (accUB + logPrimeUB n depth) (accLB + logPrimeLB n depth)
          (by rw [show n + 1 - 1 = n from by omega]
              rw [thetaUB_eq_acc n hn_pos depth, haccUB])
          (by rw [show n + 1 - 1 = n from by omega]
              rw [thetaLB_eq_acc n hn_pos depth, haccLB])
          hgo m (by omega) hmb
    case isFalse =>
      exact absurd hgo Bool.false_ne_true
  termination_by limit + 1 - n

/-- If `checkAllThetaAbsError limit bound depth` returns true, then
`checkThetaAbsError N bound depth` is true for all `N in {1, ..., limit}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fc81ae9f509248c72474b0c860dbc05c8b3907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
