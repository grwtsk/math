# probablePrime_iff_zmod_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3577232b-c920-462b-97a0-fcdacb86523b",
  "kind": "theorem",
  "lexical_name": "probablePrime_iff_zmod_one",
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
  "slug": "probableprime-iff-zmod-one--4b90125e6603cf2b6363a1bf",
  "source": {
    "blob": "83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b90125e6603cf2b6363a1bf3cd4b2224a468ad0f771bc362839c3526357ac31",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3577232b-c920-462b-97a0-fcdacb86523b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probablePrime_iff_zmod_one (n : ℕ) {b : ℕ} (hb : b ≠ 0) :
    n.ProbablePrime b ↔ (b : ZMod n) ^ (n - 1) = 1 := by
  rw [ProbablePrime, ← ZMod.natCast_eq_zero_iff, cast_pred (by positivity), sub_eq_zero, cast_pow]

/--
`n` is a Fermat pseudoprime to base `b` if `n` is a probable prime to base `b` and is composite. By
this definition, all composite natural numbers are pseudoprimes to base 0 and 1. This definition
also permits `n` to be less than `b`, so that 4 is a pseudoprime to base 5, for example.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
