# coverMincard_finite_of_isCompact_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:764dafc4-05c0-f8ed-6b2d-5bef113c0a8a",
  "kind": "lemma",
  "lexical_name": "coverMincard_finite_of_isCompact_invariant",
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
  "slug": "covermincard-finite-of-iscompact-invariant--aef4bae7efe423c49714adfc",
  "source": {
    "blob": "987f6dbe76df7782caa08b769b82ea34d94c03ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef4bae7efe423c49714adfc864751030df11858ab4d7b2ab43ee74c4608c572",
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

Occurrence: `result:764dafc4-05c0-f8ed-6b2d-5bef113c0a8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverMincard_finite_of_isCompact_invariant [UniformSpace X] {T : X → X} {F : Set X}
    (F_comp : IsCompact F) (F_inv : MapsTo T F F) {U : Set (X × X)} (U_uni : U ∈ 𝓤 X) (n : ℕ) :
    coverMincard T F U n < ⊤ := by
  obtain ⟨s, s_cover⟩ := exists_isDynCoverOf_of_isCompact_invariant F_comp F_inv U_uni n
  exact s_cover.coverMincard_le_card.trans_lt (WithTop.coe_lt_top s.card)

/-- All dynamical balls of a minimal dynamical cover of `F` intersect `F`. This lemma is the key
  to relate Bowen-Dinaburg's definition of topological entropy with covers and their definition
  of topological entropy with nets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987f6dbe76df7782caa08b769b82ea34d94c03ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
