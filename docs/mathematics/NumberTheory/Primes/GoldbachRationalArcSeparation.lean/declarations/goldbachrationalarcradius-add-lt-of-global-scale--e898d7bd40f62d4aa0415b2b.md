# goldbachRationalArcRadius_add_lt_of_global_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:595d4a5d-d84d-73a3-05ce-938c42c9eba0",
  "kind": "theorem",
  "lexical_name": "goldbachRationalArcRadius_add_lt_of_global_scale",
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
  "slug": "goldbachrationalarcradius-add-lt-of-global-scale--e898d7bd40f62d4aa0415b2b",
  "source": {
    "blob": "d92f4cfddbfef7a5784ef4bb2784477f4a272269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 254,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e898d7bd40f62d4aa0415b2b9b5ecb9198c25373ffd238551595c0ae4d30cd1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:595d4a5d-d84d-73a3-05ce-938c42c9eba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRationalArcRadius_add_lt_of_global_scale
    {Q N a q b r : ℕ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachRationalArcRadius Q N q +
        goldbachRationalArcRadius Q N r <
      1 / ((q : ℝ) * (r : ℝ)) := by
  rcases (mem_goldbachRationalArcIndices).1 ha with
    ⟨haQ, hqQ, hq, haq, hcoprimeA⟩
  rcases (mem_goldbachRationalArcIndices).1 hb with
    ⟨hbQ, hrQ, hr, hbr, hcoprimeB⟩
  apply goldbachRationalArcRadius_add_lt_inverse_mul hq hr
  calc
    Q * (q + r) ≤ Q * (Q + Q) :=
      Nat.mul_le_mul_left Q (Nat.add_le_add hqQ hrQ)
    _ = 2 * Q ^ 2 := by ring
    _ < N + 1 := hscale

/-- Two closed intervals are disjoint when the sum of their radii is strictly
smaller than the distance between their centers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92f4cfddbfef7a5784ef4bb2784477f4a272269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
