# goldbachSingularPairFrequency_ne_zero_of_offDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:972408a4-1a53-5a4e-226a-d1aab9703f57",
  "kind": "theorem",
  "lexical_name": "goldbachSingularPairFrequency_ne_zero_of_offDiagonal",
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
  "slug": "goldbachsingularpairfrequency-ne-zero-of-offdiagonal--813a4506f4bc3627528a34e3",
  "source": {
    "blob": "2ec2564e4b4f834ded91f89d732687abdfc249a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:813a4506f4bc3627528a34e36ba6492ebe6334bec9d7a35cfb2e879aa437c1d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:972408a4-1a53-5a4e-226a-d1aab9703f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSingularPairFrequency_ne_zero_of_offDiagonal
    {N : ℕ} {uv : ℕ × ℕ}
    (huv : uv ∈ goldbachSingularOffDiagonalPairs N) :
    goldbachSingularPairFrequency N uv ≠ 0 := by
  have hbox : uv ∈ goldbachSingularPairBox N :=
    (Finset.mem_sdiff.mp huv).1
  have hoff :
      uv.1 + uv.2 ≠ N :=
    (mem_goldbachSingularOffDiagonalPairs.mp huv).2.2
  exact fun hzero =>
    hoff ((goldbachSingularPairFrequency_eq_zero_iff hbox).mp hzero)

/-- The complete ordered pair box contains exactly `(N + 1)^2` pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec2564e4b4f834ded91f89d732687abdfc249a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
