# RelCWComplex.mem_skeleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4537bf0-d8be-ac09-13de-66d81640c334",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.mem_skeleton_iff",
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
  "slug": "relcwcomplex-mem-skeleton-iff--895577b7ac6d2c5c537a840b",
  "source": {
    "blob": "15311ad10986cc984a38ac7dee6e2fc5ae8a76f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1022,
    "line": 1014,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895577b7ac6d2c5c537a840bba25a642afb2ffff5bec1617220a052972a1adf7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4537bf0-d8be-ac09-13de-66d81640c334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1014–1022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.mem_skeleton_iff [RelCWComplex C D] {n : ℕ∞} {x : X} :
    x ∈ skeleton C n ↔ x ∈ D ∨ ∃ (m : ℕ) (_ : m ≤ n) (j : cell C m), x ∈ openCell m j := by
  rw [skeleton, mem_skeletonLT_iff]
  suffices ∀ (m : ℕ), m < n + 1 ↔ m ≤ n by simp_rw [this]
  intro m
  cases n
  · simp
  · rw [← Nat.cast_one, ← Nat.cast_add, Nat.cast_lt, Nat.cast_le, Order.lt_add_one_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean#L1014).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15311ad10986cc984a38ac7dee6e2fc5ae8a76f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
