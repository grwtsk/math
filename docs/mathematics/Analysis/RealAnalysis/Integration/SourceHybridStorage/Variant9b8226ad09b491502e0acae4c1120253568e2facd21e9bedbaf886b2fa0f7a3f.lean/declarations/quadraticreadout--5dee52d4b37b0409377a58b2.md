# quadraticReadout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a0f2556c7fc8877cac0fb7b4c8644b4e58e609c5736f607778e5ae7dc0bbff3",
  "kind": "def",
  "lexical_name": "quadraticReadout",
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
  "slug": "quadraticreadout--5dee52d4b37b0409377a58b2",
  "source": {
    "blob": "2752fc911e4490f46e950968e3ccbea5a65c7d02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dee52d4b37b0409377a58b2c9eff6ed6d1db3b3d9ea061eb5a05917945270b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a0f2556c7fc8877cac0fb7b4c8644b4e58e609c5736f607778e5ae7dc0bbff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quadraticReadout (P : Matrix n n ℂ) (w : n → ℂ) : ℝ :=
  (star w ⬝ᵥ (P *ᵥ w)).re

/-- Quadratic-form order; for Hermitian matrices this is Loewner order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2752fc911e4490f46e950968e3ccbea5a65c7d02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
