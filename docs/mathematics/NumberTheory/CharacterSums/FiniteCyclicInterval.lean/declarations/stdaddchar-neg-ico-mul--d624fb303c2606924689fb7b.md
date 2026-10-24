# stdAddChar_neg_Ico_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d664c878-7506-fcd5-c37f-5c5ce10aab3d",
  "kind": "theorem",
  "lexical_name": "stdAddChar_neg_Ico_mul",
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
  "slug": "stdaddchar-neg-ico-mul--d624fb303c2606924689fb7b",
  "source": {
    "blob": "96930379e6ff23ebff52da0230b72ab22ad95d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 38,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d624fb303c2606924689fb7be4d9102b45718fa1a9512d2541a5d2b7591bc571",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d664c878-7506-fcd5-c37f-5c5ce10aab3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdAddChar_neg_Ico_mul (t : ZMod q) (A B : ℕ)
    (hA : 1 ≤ A) (hAB : A ≤ B) :
    (ZMod.stdAddChar t - 1) *
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) =
      ZMod.stdAddChar (-(((A - 1 : ℕ) : ZMod q) * t)) -
        ZMod.stdAddChar (-(((B - 1 : ℕ) : ZMod q) * t)) := by
  induction B, hAB using Nat.le_induction with
  | base => simp
  | succ B hAB ih =>
      rw [Finset.sum_Ico_succ_top hAB, mul_add, ih]
      have hpred : B - 1 + 1 = B :=
        Nat.sub_add_cancel (le_trans hA hAB)
      have hstep := stdAddChar_neg_nat_succ_mul t (B - 1)
      rw [hpred] at hstep
      rw [Nat.add_sub_cancel]
      linear_combination hstep

/-- A nonzero frequency gives an actual unweighted finite-sum bound.
The interval is allowed to be empty or reversed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicInterval.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96930379e6ff23ebff52da0230b72ab22ad95d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
