# eq_zero_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d1882f3-487d-3429-54ed-20e31a2eaede",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_lt",
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
  "slug": "eq-zero-of-lt--78fe76c7920846bc5f2794cd",
  "source": {
    "blob": "5d7d4b877c0a378359735d69f42997f43d5b60e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78fe76c7920846bc5f2794cddf2542eb1f052afe99b05693d99f3dee514c2a26",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d1882f3-487d-3429-54ed-20e31a2eaede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_lt {n ν : ℕ} (h : n < ν) : bernsteinPolynomial R n ν = 0 := by
  simp [bernsteinPolynomial, Nat.choose_eq_zero_of_lt h]

section

variable {R} {S : Type*} [CommRing S]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7d4b877c0a378359735d69f42997f43d5b60e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
