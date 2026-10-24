# natAbs_euclideanDomain_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98f5e525eb155df803ab5f3f56db05e6fb71e637",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fae20af-0594-f0d7-00bc-f345a8ee6da4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0164085-caa6-2fd7-635c-3f33450dc733",
  "kind": "theorem",
  "lexical_name": "natAbs_euclideanDomain_gcd",
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
  "slug": "natabs-euclideandomain-gcd--e6d40ca4fd0e3f20cf308ff3",
  "source": {
    "blob": "98f5e525eb155df803ab5f3f56db05e6fb71e637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 244,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6d40ca4fd0e3f20cf308ff34a98eae915b9c4c33fef6959a82eb83c4a8f0453",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0164085-caa6-2fd7-635c-3f33450dc733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_euclideanDomain_gcd (a b : ℤ) :
    Int.natAbs (EuclideanDomain.gcd a b) = Int.gcd a b := by
  apply Nat.dvd_antisymm <;> rw [← Int.coe_nat_dvd]
  · rw [Int.natAbs_dvd]
    exact Int.dvd_gcd (EuclideanDomain.gcd_dvd_left _ _) (EuclideanDomain.gcd_dvd_right _ _)
  · rw [Int.dvd_natAbs]
    exact EuclideanDomain.dvd_gcd (Int.gcd_dvd_left _ _) (Int.gcd_dvd_right _ _)
#align int.nat_abs_euclidean_domain_gcd Int.natAbs_euclideanDomain_gcd

end Int

/-- Maps an associate class of integers consisting of `-n, n` to `n : ℕ` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f5e525eb155df803ab5f3f56db05e6fb71e637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
