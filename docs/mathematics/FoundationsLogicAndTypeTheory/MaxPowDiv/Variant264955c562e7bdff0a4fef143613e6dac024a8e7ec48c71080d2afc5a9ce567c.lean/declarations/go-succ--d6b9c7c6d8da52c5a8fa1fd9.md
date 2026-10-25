# go_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1da9f164-e4b5-9796-475e-f6ae3b685f43",
  "kind": "theorem",
  "lexical_name": "go_succ",
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
  "slug": "go-succ--d6b9c7c6d8da52c5a8fa1fd9",
  "source": {
    "blob": "acc0743305ff1c533d9a7480b764b6167ac5e5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6b9c7c6d8da52c5a8fa1fd98c846a6a7995d40e1c6faa9ab2b4de0d10f62eb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da9f164-e4b5-9796-475e-f6ae3b685f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_succ {k p n : ℕ} : go (k+1) p n = go k p n + 1 := by
  rw [go_eq]
  conv_rhs => rw [go_eq]
  by_cases (1 < p ∧ 0 < n ∧ n % p = 0); swap
  · simp only [if_neg h]
  · have : n / p < n := by apply Nat.div_lt_self <;> aesop
    simp only [if_pos h]
    apply go_succ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc0743305ff1c533d9a7480b764b6167ac5e5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
