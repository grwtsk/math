# selberg_bound_simple_errSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94eeb123-c1bd-09b8-e0af-d466ebd0e3c0",
  "kind": "theorem",
  "lexical_name": "selberg_bound_simple_errSum",
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
  "slug": "selberg-bound-simple-errsum--f95a83aa408aa8887b89b057",
  "source": {
    "blob": "cc9e836a88d58c0c5d3b64f92aa8af485f891dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 433,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f95a83aa408aa8887b89b057d25eccd9df6b1ee68bfd265b117d9b87d9dc9efe",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94eeb123-c1bd-09b8-e0af-d466ebd0e3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selberg_bound_simple_errSum :
    errSum (s := s.toBoundingSieve) μ⁺ ≤
      ∑ d ∈ divisors P, if (d : ℝ) ≤ y then (3:ℝ) ^ ω d * |R d| else 0 := by
  dsimp only [errSum]
  gcongr with d hd
  split_ifs with h
  · apply mul_le_mul _ le_rfl (abs_nonneg <| R d) (pow_nonneg _ <| ω d)
    · apply s.selberg_bound_muPlus d hd
    · norm_num
  · rw [s.selbergμPlus_eq_zero d h, abs_zero, zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9e836a88d58c0c5d3b64f92aa8af485f891dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
