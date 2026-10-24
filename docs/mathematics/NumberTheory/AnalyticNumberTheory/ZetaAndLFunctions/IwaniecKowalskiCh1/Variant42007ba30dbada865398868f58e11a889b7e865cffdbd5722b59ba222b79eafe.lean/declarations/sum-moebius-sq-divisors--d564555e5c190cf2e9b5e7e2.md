# sum_moebius_sq_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81046ec0d3fa7f71edf9a1cb3e4d6bb72684a8ad66ee4d0cfd0b92b8a9cf93bb",
  "kind": "def",
  "lexical_name": "sum_moebius_sq_divisors",
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
  "slug": "sum-moebius-sq-divisors--d564555e5c190cf2e9b5e7e2",
  "source": {
    "blob": "f10936542ce26f4e3d13f8c80e4a797c94ed7c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 851,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d564555e5c190cf2e9b5e7e27528eb6084cda0efdc58c06471f3786f0450af44",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81046ec0d3fa7f71edf9a1cb3e4d6bb72684a8ad66ee4d0cfd0b92b8a9cf93bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sum_moebius_sq_divisors : ArithmeticFunction ℤ where
  toFun := fun n ↦ ∑ d ∈ n.divisors.filter (fun x => x ^ 2 ∣ n), μ d
  map_zero' := by simp

@[blueprint
  "sum_moebius_sq_divisors_apply"
  (title := "sum-moebius-sq-divisors-apply")
  (statement := /-- A simple helper lemma for the above definition. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10936542ce26f4e3d13f8c80e4a797c94ed7c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
