# tailPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14f2c9f1c190a2814368a51e5268effa11032d47f57c0f6690d3e05aad06c8b9",
  "kind": "def",
  "lexical_name": "tailPolynomial",
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
  "slug": "tailpolynomial--b6d8f153f13cdd8c4b2c63bd",
  "source": {
    "blob": "08851934490227b79c9b4f11523797e58b9db58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d8f153f13cdd8c4b2c63bd3e3c736d37aa2123f78324bc488efa978109f01a",
  "verification": {
    "reference": "docs/verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14f2c9f1c190a2814368a51e5268effa11032d47f57c0f6690d3e05aad06c8b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tailPolynomial (y : ℝ) : ℝ := 576 * y ^ 5 * (64 + y ^ 2) ^ 2
/-- The tail price in this module, with the following exact parameterization.

def tailPrice (θ y : ℝ) : ℝ := tailPolynomial y * Real.exp (-θ * y)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08851934490227b79c9b4f11523797e58b9db58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
