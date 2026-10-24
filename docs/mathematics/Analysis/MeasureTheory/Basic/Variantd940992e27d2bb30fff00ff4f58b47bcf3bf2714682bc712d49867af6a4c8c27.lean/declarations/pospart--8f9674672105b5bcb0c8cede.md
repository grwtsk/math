# posPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1749f46ac37d4388dbf9761dd255f5a5e363e574678964f53f1c7d45249ecbfe",
  "kind": "def",
  "lexical_name": "posPart",
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
  "slug": "pospart--8f9674672105b5bcb0c8cede",
  "source": {
    "blob": "8f46409fee18d9ab42311db2c97b83043cdb18d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 867,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f9674672105b5bcb0c8cede696b3f72da9fbd813edcab0e7ef62ae5332b97f8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1749f46ac37d4388dbf9761dd255f5a5e363e574678964f53f1c7d45249ecbfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def posPart (f : Lp ℝ p μ) : Lp ℝ p μ :=
  lipschitzWith_pos_part.compLp (max_eq_right le_rfl) f

/-- Negative part of a function in `L^p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f46409fee18d9ab42311db2c97b83043cdb18d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
