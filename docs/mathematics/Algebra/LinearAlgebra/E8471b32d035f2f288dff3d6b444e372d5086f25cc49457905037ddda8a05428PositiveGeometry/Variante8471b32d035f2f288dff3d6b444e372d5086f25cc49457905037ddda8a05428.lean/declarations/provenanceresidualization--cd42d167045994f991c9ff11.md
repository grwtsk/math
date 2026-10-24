# ProvenanceResidualization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:633b7e51c65e9efaba7f96659cda84ae5740eebee3f884dfd0a433dae078ada7",
  "kind": "structure",
  "lexical_name": "ProvenanceResidualization",
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
  "slug": "provenanceresidualization--cd42d167045994f991c9ff11",
  "source": {
    "blob": "7cc0638e1010e785c30994032c951de39be085a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd42d167045994f991c9ff11bf131d22da0f45df4343fddfa778037e55d1958b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:633b7e51c65e9efaba7f96659cda84ae5740eebee3f884dfd0a433dae078ada7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProvenanceResidualization
    (Ambient : Type u) (Residual : Type v)
    [AddCommGroup Ambient] [Module ℝ Ambient]
    [AddCommGroup Residual] [Module ℝ Residual] where
  residualMap : Residual →ₗ[ℝ] Ambient

namespace ProvenanceResidualization

variable {Ambient : Type u} {Residual : Type v}
variable [AddCommGroup Ambient] [Module ℝ Ambient]
variable [AddCommGroup Residual] [Module ℝ Residual]

/-- The autonomous residual geometry is the ambient positive form pulled back
through the certified residual map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cc0638e1010e785c30994032c951de39be085a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
