# CharP.intCast_eq_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2d28562-718f-d7c3-f9f0-2e976fe3279f",
  "kind": "lemma",
  "lexical_name": "CharP.intCast_eq_mod",
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
  "slug": "charp-intcast-eq-mod--a4df2f1a25c1cc40499e4a36",
  "source": {
    "blob": "9d911ea9c7296b68e0df97da2473dd9d52652a89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4df2f1a25c1cc40499e4a36bdd084d9c1537bc0d66f3b5f55534ff10c30258d",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d28562-718f-d7c3-f9f0-2e976fe3279f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CharP.intCast_eq_mod (R : Type _) [Ring R] (p : ℕ) [CharP R p] (k : ℤ) :
    (k : R) = (k % p : ℤ) := by
  calc
    (k : R) = ↑(k % p + p * (k / p)) := by rw [Int.emod_add_ediv]
    _ = ↑(k % p) := by simp [CharP.cast_eq_zero R]

/-- Given an integral expression `e : t` such that `t` is a ring of characteristic `n`,
reduce `e` modulo `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d911ea9c7296b68e0df97da2473dd9d52652a89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
