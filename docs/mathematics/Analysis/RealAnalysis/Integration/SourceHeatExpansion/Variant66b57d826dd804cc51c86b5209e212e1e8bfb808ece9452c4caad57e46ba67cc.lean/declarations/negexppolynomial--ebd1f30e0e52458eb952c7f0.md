# negExpPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d39e5054147af9d3c5f3be6e225c1e44d91953163cdf2ba9660f6cf3bbbaeb2",
  "kind": "def",
  "lexical_name": "negExpPolynomial",
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
  "slug": "negexppolynomial--ebd1f30e0e52458eb952c7f0",
  "source": {
    "blob": "c2900e246d8cace336edf4924e96672d0a59d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebd1f30e0e52458eb952c7f0b11d0abaa20d7c9a8f2ab026b7097370aede9131",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d39e5054147af9d3c5f3be6e225c1e44d91953163cdf2ba9660f6cf3bbbaeb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def negExpPolynomial (n : ℕ) (y : ℝ) : ℝ :=
  ∑ i ∈ Finset.range (n + 1), (-1 : ℝ) ^ i * y ^ i / i.factorial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2900e246d8cace336edf4924e96672d0a59d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
