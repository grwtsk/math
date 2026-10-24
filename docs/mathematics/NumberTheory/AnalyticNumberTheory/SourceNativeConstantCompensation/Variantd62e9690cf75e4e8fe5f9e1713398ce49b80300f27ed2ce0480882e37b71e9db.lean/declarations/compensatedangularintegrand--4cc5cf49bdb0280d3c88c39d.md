# compensatedAngularIntegrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8df7c56b151e7de7242807781db1bc61125c0a39bfd9ae0a9c39bbd96f25d10",
  "kind": "def",
  "lexical_name": "compensatedAngularIntegrand",
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
  "slug": "compensatedangularintegrand--4cc5cf49bdb0280d3c88c39d",
  "source": {
    "blob": "4ec9c080afd7b3f101ca9361c3d57feee3d62e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cc5cf49bdb0280d3c88c39d4150d74655902d7f78566d6156cc3a7fe346c53d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8df7c56b151e7de7242807781db1bc61125c0a39bfd9ae0a9c39bbd96f25d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compensatedAngularIntegrand (A t : ℝ) : ℂ :=
  (combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ)) - (rightLineMajorant 2 : ℂ)) *
    nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))

/-- The whole signed compensated readout on the original initial c = 2 line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec9c080afd7b3f101ca9361c3d57feee3d62e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
