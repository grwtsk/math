# remainder_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9f22638-77fb-e7be-ab8c-caa342c818c6",
  "kind": "theorem",
  "lexical_name": "remainder_summable",
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
  "slug": "remainder-summable--34a762815bc818d8638b91a3",
  "source": {
    "blob": "7b0e5b698a59e2998385bb2a74a24b2d34b2070c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 92,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34a762815bc818d8638b91a390b23f67fd5efa62b617e67fb09cc8889b082df7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9f22638-77fb-e7be-ab8c-caa342c818c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainder_summable {m : ℝ} (hm : 1 < m) (k : ℕ) :
    Summable fun i : ℕ => 1 / m ^ (i + (k + 1))! := by
  convert(summable_nat_add_iff (k + 1)).2 (LiouvilleNumber.summable hm)
#align liouville_number.remainder_summable LiouvilleNumber.remainder_summable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0e5b698a59e2998385bb2a74a24b2d34b2070c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
