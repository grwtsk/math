# boundOfDiscBdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b89096a0b0a1a562ef3c7ec6b766dab54638d35266452beaacade0dd16e3cc4",
  "kind": "abbrev",
  "lexical_name": "boundOfDiscBdd",
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
  "slug": "boundofdiscbdd--2f2d91b98331d6f2fe5be2da",
  "source": {
    "blob": "fd1619b8c00751ca9b8cd1cc4764b4e3e7838132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 298,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f2d91b98331d6f2fe5be2daffa24d03fa0d24c51215106ecd286ca08c8eaed1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b89096a0b0a1a562ef3c7ec6b766dab54638d35266452beaacade0dd16e3cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev boundOfDiscBdd : ℝ≥0 := sqrt N * (2 : ℝ≥0) ^ rankOfDiscrBdd N + 1

variable {N} (hK : |discr K| ≤ N)

include hK in
/-- If `|discr K| ≤ N` then the degree of `K` is at most `rankOfDiscrBdd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1619b8c00751ca9b8cd1cc4764b4e3e7838132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
