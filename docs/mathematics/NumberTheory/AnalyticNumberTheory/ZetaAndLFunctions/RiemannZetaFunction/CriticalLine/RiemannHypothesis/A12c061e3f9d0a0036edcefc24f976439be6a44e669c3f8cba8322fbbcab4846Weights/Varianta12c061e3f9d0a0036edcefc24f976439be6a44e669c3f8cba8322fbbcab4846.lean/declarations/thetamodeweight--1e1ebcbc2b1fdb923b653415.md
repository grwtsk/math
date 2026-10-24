# thetaModeWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c728b9c30d6a0dbf6a8869899a664c0aae7e478084fae6dfd0bb7bc7cd1a9fc4",
  "kind": "def",
  "lexical_name": "thetaModeWeight",
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
  "slug": "thetamodeweight--1e1ebcbc2b1fdb923b653415",
  "source": {
    "blob": "8ea35ff706d7ae4d376b6f727a856b127baa700b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7,
    "line": 6,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846Weights/Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e1ebcbc2b1fdb923b653415fd5e0e2ac9b5f0ea9a4d7e962783218c5fc7fad6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846Weights/Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c728b9c30d6a0dbf6a8869899a664c0aae7e478084fae6dfd0bb7bc7cd1a9fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–7.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaModeWeight (m : ℕ) (t : ℝ) : ℝ := thetaPhiTerm m t / thetaPhi t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846Weights/Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846Weights/Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ea35ff706d7ae4d376b6f727a856b127baa700b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
