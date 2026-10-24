# poissonPMFReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ec906c5cd981f8dfffcf5701e47dc2ba9c48b6b4a8ecad4e086c6b49f5ad0f0",
  "kind": "def",
  "lexical_name": "poissonPMFReal",
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
  "slug": "poissonpmfreal--e975456e2b30ebbd6c38c147",
  "source": {
    "blob": "562e8e30e8de3fc293cd138d548b74b7cacbf8a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 42,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e975456e2b30ebbd6c38c147239489f18fd1c0483df2b1869e63da042653398c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ec906c5cd981f8dfffcf5701e47dc2ba9c48b6b4a8ecad4e086c6b49f5ad0f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def poissonPMFReal (r : ℝ≥0) (n : ℕ) : ℝ := exp (- r) * r ^ n / n !

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `562e8e30e8de3fc293cd138d548b74b7cacbf8a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
