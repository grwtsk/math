# single_one_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df7c268c-8f5c-a0cb-3f5e-5a30fa600fca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:932fc972-5b11-b942-e1d7-c71599761d6d",
  "kind": "theorem",
  "lexical_name": "single_one_eq_pow",
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
  "slug": "single-one-eq-pow--08e847506470ac2fbbdb7778",
  "source": {
    "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 460,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08e847506470ac2fbbdb7778fd84994fe9be8cf0799b98d14ebd1e2d186ebb2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:932fc972-5b11-b942-e1d7-c71599761d6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_one_eq_pow {R : Type*} [Semiring R] (n : ℕ) :
    single (n : ℤ) (1 : R) = single (1 : ℤ) 1 ^ n := by
  induction' n with n h_ind
  · simp
  · rw [← Int.ofNat_add_one_out, pow_succ', ← h_ind, HahnSeries.single_mul_single, one_mul,
      add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c782bb7017d8b673e57ef41bf349b892c94a13e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
