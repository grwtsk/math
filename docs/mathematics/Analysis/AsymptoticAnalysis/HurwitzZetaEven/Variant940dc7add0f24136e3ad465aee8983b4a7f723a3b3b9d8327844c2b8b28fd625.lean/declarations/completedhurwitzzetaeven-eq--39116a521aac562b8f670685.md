# completedHurwitzZetaEven_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99e9c2e9-5a2a-5e4f-7c27-2c667f719b40",
  "kind": "lemma",
  "lexical_name": "completedHurwitzZetaEven_eq",
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
  "slug": "completedhurwitzzetaeven-eq--39116a521aac562b8f670685",
  "source": {
    "blob": "013f2bdf9dd03263486c1491a907da39bbde1132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 315,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39116a521aac562b8f670685e05e765d29fbaf697d4a7196092a6f91d23435f8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99e9c2e9-5a2a-5e4f-7c27-2c667f719b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedHurwitzZetaEven_eq (a : UnitAddCircle) (s : ℂ) :
    completedHurwitzZetaEven a s =
    completedHurwitzZetaEven₀ a s - (if a = 0 then 1 else 0) / s - 1 / (1 - s) := by
  rw [completedHurwitzZetaEven, WeakFEPair.Λ, sub_div, sub_div]
  congr 1
  · change completedHurwitzZetaEven₀ a s - (1 / (s / 2)) • (if a = 0 then 1 else 0) / 2 =
      completedHurwitzZetaEven₀ a s - (if a = 0 then 1 else 0) / s
    rw [smul_eq_mul, mul_comm, mul_div_assoc, div_div, div_mul_cancel₀ _ two_ne_zero, mul_one_div]
  · change (1 / (↑(1 / 2 : ℝ) - s / 2)) • 1 / 2 = 1 / (1 - s)
    push_cast
    rw [smul_eq_mul, mul_one, ← sub_div, div_div, div_mul_cancel₀ _ two_ne_zero]

/--
The meromorphic function of `s` which agrees with
`Gamma (s / 2) * π ^ (-s / 2) * ∑' n : ℕ, cos (2 * π * a * n) / n ^ s` for `1 < re s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013f2bdf9dd03263486c1491a907da39bbde1132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
