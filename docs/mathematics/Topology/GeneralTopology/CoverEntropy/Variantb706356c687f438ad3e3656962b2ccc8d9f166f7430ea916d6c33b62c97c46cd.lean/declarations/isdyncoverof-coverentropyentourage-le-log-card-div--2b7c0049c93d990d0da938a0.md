# IsDynCoverOf.coverEntropyEntourage_le_log_card_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f37393b-0322-7e69-ee5f-41834e81468e",
  "kind": "lemma",
  "lexical_name": "IsDynCoverOf.coverEntropyEntourage_le_log_card_div",
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
  "slug": "isdyncoverof-coverentropyentourage-le-log-card-div--2b7c0049c93d990d0da938a0",
  "source": {
    "blob": "987f6dbe76df7782caa08b769b82ea34d94c03ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 439,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b7c0049c93d990d0da938a00849236dccf5db2e937c8e371598b6e4fe4b8285",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f37393b-0322-7e69-ee5f-41834e81468e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDynCoverOf.coverEntropyEntourage_le_log_card_div {T : X → X} {F : Set X}
    (F_inv : MapsTo T F F) {U : Set (X × X)} (U_symm : IsSymmetricRel U) {n : ℕ} (n_pos : n ≠ 0)
    {s : Finset X} (h : IsDynCoverOf T F U n s) :
    coverEntropyEntourage T F (U ○ U) ≤ log s.card / n := by
  apply (coverEntropyEntourage_le_log_coverMincard_div F_inv U_symm n_pos).trans
  apply monotone_div_right_of_nonneg n.cast_nonneg' (log_monotone _)
  exact_mod_cast coverMincard_le_card h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987f6dbe76df7782caa08b769b82ea34d94c03ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
