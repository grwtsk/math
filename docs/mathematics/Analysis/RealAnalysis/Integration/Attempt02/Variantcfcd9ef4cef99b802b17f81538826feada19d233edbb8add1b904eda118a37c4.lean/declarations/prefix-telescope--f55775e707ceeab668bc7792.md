# prefix_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:528a8a0b-05b8-a050-63d0-5cb66bde098f",
  "kind": "theorem",
  "lexical_name": "prefix_telescope",
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
  "slug": "prefix-telescope--f55775e707ceeab668bc7792",
  "source": {
    "blob": "57b5e31fa42b0d59177c632a79f12a91ab326665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f55775e707ceeab668bc77921040b4bce6d761a431f4b6fdfe86d76f408a9e91",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:528a8a0b-05b8-a050-63d0-5cb66bde098f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prefix_telescope (U n : ℕ) (hn : U ≤ n) (b w : ℕ → ℝ) :
    (∑ k ∈ Finset.Ioc U n,
      (∑ j ∈ Finset.Ioc U k, b j) * (w k - w (k + 1))) =
      (∑ j ∈ Finset.Ioc U n, b j * w j) -
        (∑ j ∈ Finset.Ioc U n, b j) * w (n + 1) := by
  refine Nat.le_induction ?_ ?_ n hn
  · simp
  intro n hUn ih
  rw [Finset.sum_Ioc_succ_top hUn, Finset.sum_Ioc_succ_top hUn,
    Finset.sum_Ioc_succ_top hUn, ih]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57b5e31fa42b0d59177c632a79f12a91ab326665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
