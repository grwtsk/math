# go_true_implies_checkPsiLeMulWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bb4e73474ee623b6d1935213a0527f558d451856c19d6986cda28352dc32c0f",
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
  "slug": "go-true-implies-checkpsilemulwith--d7f0028ffa2a728ab710c12d",
  "source": {
    "blob": "d95bc5988826c1d4a98059a095c5e2aa03954cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 181,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7f0028ffa2a728ab710c12deb9229a2ca93adee902369ad3c231f47d6c88441",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bb4e73474ee623b6d1935213a0527f558d451856c19d6986cda28352dc32c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–216.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95bc5988826c1d4a98059a095c5e2aa03954cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
