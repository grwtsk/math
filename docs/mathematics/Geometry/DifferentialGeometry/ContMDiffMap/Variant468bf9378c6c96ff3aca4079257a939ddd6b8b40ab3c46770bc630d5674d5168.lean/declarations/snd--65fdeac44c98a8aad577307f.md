# snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24f12a9ed824a70413c22d1136d75d34346a2f6145fa5c1bced592a16f051211",
  "kind": "def",
  "lexical_name": "snd",
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
  "slug": "snd--65fdeac44c98a8aad577307f",
  "source": {
    "blob": "4f862a8ba922f0d2b3723f721025e733e6a6a7af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 105,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variant468bf9378c6c96ff3aca4079257a939ddd6b8b40ab3c46770bc630d5674d5168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65fdeac44c98a8aad577307fe67ca061c50a0dd8969ccbe329bf527157b286b3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMap/Variant468bf9378c6c96ff3aca4079257a939ddd6b8b40ab3c46770bc630d5674d5168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24f12a9ed824a70413c22d1136d75d34346a2f6145fa5c1bced592a16f051211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def snd : C^n⟮I.prod I', M × M'; I', M'⟯ :=
  ⟨Prod.snd, contMDiff_snd⟩

/-- Given two `C^n` maps `f` and `g`, this is the `C^n` map `x ↦ (f x, g x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMap/Variant468bf9378c6c96ff3aca4079257a939ddd6b8b40ab3c46770bc630d5674d5168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variant468bf9378c6c96ff3aca4079257a939ddd6b8b40ab3c46770bc630d5674d5168.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f862a8ba922f0d2b3723f721025e733e6a6a7af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
