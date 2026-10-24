# span_pair_isPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56c2e7cc605474ccda5a1636e58afdd697518ddb2b6275a8fb0a980cb663c544",
  "kind": "instance",
  "lexical_name": "span_pair_isPrincipal",
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
  "slug": "span-pair-isprincipal--acf0320465f37f49a27b8893",
  "source": {
    "blob": "88e611fe03c393d5a12418594d8eb1dc243c0b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acf0320465f37f49a27b889308e9bcc9620456fec7373998ac492fb787e2e789",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56c2e7cc605474ccda5a1636e58afdd697518ddb2b6275a8fb0a980cb663c544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance span_pair_isPrincipal [IsBezout R] (x y : R) : (Ideal.span {x, y}).IsPrincipal := by
  classical exact isPrincipal_of_FG (Ideal.span {x, y}) ⟨{x, y}, by simp⟩

variable (x y : R) [(Ideal.span {x, y}).IsPrincipal]

/-- A choice of gcd of two elements in a Bézout domain.

Note that the choice is usually not unique. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e611fe03c393d5a12418594d8eb1dc243c0b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
