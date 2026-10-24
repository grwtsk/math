# go_true_implies_checkPsiLeMulWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d744dcdd18581e91c0fe6aab5c1416f3224f46f77e1aaf0ec0dc57889f3ea6f9",
  "kind": "def",
  "lexical_name": "go_true_implies_checkPsiLeMulWith",
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
  "slug": "go-true-implies-checkpsilemulwith--d5b1c0baf4fb5a7471c7a11b",
  "source": {
    "blob": "3b5e73eccb695d7ba489001e0676bcd56fb94a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5b1c0baf4fb5a7471c7a11b00bd8880562e1719341bf19ef7eb8f74634ed550",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d744dcdd18581e91c0fe6aab5c1416f3224f46f77e1aaf0ec0dc57889f3ea6f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def go_true_implies_checkPsiLeMulWith
    (bound : Nat) (slope : Rat) (depth n : Nat) (hn_pos : 0 < n) (acc : Rat)
    (hacc : acc = psiUB (n - 1) depth)
    (hgo : checkAllPsiLeMulWith.go bound slope depth n acc = true)
    (m : Nat) (hm : n <= m) (hmb : m <= bound) :
    checkPsiLeMulWith m slope depth = true := by
  unfold checkAllPsiLeMulWith.go at hgo
  split at hgo
  case isTrue hn_gt =>
    omega
  case isFalse hn_le =>
    change (if decide (acc + vonMangoldtUB n depth <= slope * (n : Rat)) then
      checkAllPsiLeMulWith.go bound slope depth (n + 1) (acc + vonMangoldtUB n depth)
      else false) = true at hgo
    split at hgo
    case isTrue hcheck =>
      have hpsiUB_n : psiUB n depth <= slope * (n : Rat) := by
        rw [psiUB_eq_acc n hn_pos depth, <- hacc]
        rwa [decide_eq_true_eq] at hcheck
      by_cases hmn : m = n
      case pos =>
        subst hmn
        exact decide_eq_true_eq.mpr hpsiUB_n
      case neg =>
        exact go_true_implies_checkPsiLeMulWith bound slope depth (n + 1) (by omega)
          (acc + vonMangoldtUB n depth)
          (by
            rw [show n + 1 - 1 = n from by omega]
            rw [psiUB_eq_acc n hn_pos depth, hacc])
          hgo m (by omega) hmb
    case isFalse =>
      exact absurd hgo Bool.false_ne_true
  termination_by bound + 1 - n

/-- If `checkAllPsiLeMulWith bound slope depth` returns true, then
`checkPsiLeMulWith N slope depth` is true for all `N in {1, ..., bound}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5e73eccb695d7ba489001e0676bcd56fb94a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
