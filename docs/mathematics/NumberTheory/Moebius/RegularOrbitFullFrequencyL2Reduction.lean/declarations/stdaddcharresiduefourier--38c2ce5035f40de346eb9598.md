# stdAddCharResidueFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:502a6f8f87ec24125b4a72bd3653caa32852efcb85c021162089068c66077d5d",
  "kind": "def",
  "lexical_name": "stdAddCharResidueFourier",
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
  "slug": "stdaddcharresiduefourier--38c2ce5035f40de346eb9598",
  "source": {
    "blob": "f1ccaa4993b87f4561c29feeb50392beaece4c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38c2ce5035f40de346eb9598aebbf1475c4d4d0031ecb89ef58b7bb08567f964",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:502a6f8f87ec24125b4a72bd3653caa32852efcb85c021162089068c66077d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stdAddCharResidueFourier
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ)
    (k : ZMod (d * d)) : ℂ :=
  ∑ s : ZMod (d * d),
    C s * ZMod.stdAddChar (k * s)

/-- The exact Parseval proposition required by this branch.

It is intentionally typed rather than inhabited: Mathlib's finite-character
orthogonality must first be connected to this literal `stdAddChar (k*s)`
normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ccaa4993b87f4561c29feeb50392beaece4c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
