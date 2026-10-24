# expSeries_apply_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b81f82a-bfab-7ee3-0c61-6d0622415a22",
  "kind": "theorem",
  "lexical_name": "expSeries_apply_zero",
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
  "slug": "expseries-apply-zero--076e19715048b8ad8833a198",
  "source": {
    "blob": "bfcd7600f39869f55fb9e778463756b4ddae7fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076e19715048b8ad8833a19813ef066b800416cc826ff10f84d59738f7f00fb8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b81f82a-bfab-7ee3-0c61-6d0622415a22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expSeries_apply_zero (n : ℕ) :
    (expSeries 𝕂 𝔸 n fun _ => (0 : 𝔸)) = Pi.single (f := fun _ => 𝔸) 0 1 n := by
  rw [expSeries_apply_eq]
  cases' n with n
  · rw [pow_zero, Nat.factorial_zero, Nat.cast_one, inv_one, one_smul, Pi.single_eq_same]
  · rw [zero_pow (Nat.succ_pos _), smul_zero, Pi.single_eq_of_ne n.succ_ne_zero]
#align exp_series_apply_zero expSeries_apply_zero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfcd7600f39869f55fb9e778463756b4ddae7fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
