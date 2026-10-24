# GoldbachReducedPrefixSupplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:691eb8f4270a1a3591b1f79e51d0792bdb6cd841407432a1d1138e5fa613b95d",
  "kind": "def",
  "lexical_name": "GoldbachReducedPrefixSupplier",
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
  "slug": "goldbachreducedprefixsupplier--0f9a66f2305a64e3e8cf1c7d",
  "source": {
    "blob": "9ba17d242bb49071bd71996f149ef7c9c4a74773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f9a66f2305a64e3e8cf1c7dc0809a9bf2025e57d207507308c71a416f429f4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:691eb8f4270a1a3591b1f79e51d0792bdb6cd841407432a1d1138e5fa613b95d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GoldbachReducedPrefixSupplier (N₀ : ℕ) (Q : ℕ → ℕ)
    (B : ℕ → ℕ → ℕ → ℝ) : Prop :=
  ∀ N, N₀ ≤ N → 2 < N → Even N →
    ∀ q, 0 < q → q ≤ Q N →
      ∀ r, r < q → q.Coprime r →
        0 ≤ B N q r ∧
          ∀ k, k ≤ N → ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B N q r

/-- Clipped three-lift geometry supplies a genuinely small offset and an
integer period. The central offset itself need not be small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba17d242bb49071bd71996f149ef7c9c4a74773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
