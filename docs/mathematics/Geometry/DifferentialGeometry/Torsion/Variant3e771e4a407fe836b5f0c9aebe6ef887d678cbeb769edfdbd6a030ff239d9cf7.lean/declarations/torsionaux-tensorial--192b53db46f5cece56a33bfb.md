# torsionAux_tensorial₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65fbdb40-c871-ff24-d181-9062dc6c4b9b",
  "kind": "theorem",
  "lexical_name": "torsionAux_tensorial₁",
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
  "slug": "torsionaux-tensorial--192b53db46f5cece56a33bfb",
  "source": {
    "blob": "4cc833a78f38a9abc2e3899d27866eb55054909a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 60,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192b53db46f5cece56a33bfb31d2c11973ca65c99f6424a2cb2f0f251a04449d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65fbdb40-c871-ff24-d181-9062dc6c4b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem torsionAux_tensorial₁ (hcov : IsCovariantDerivativeOn E cov) (x : M)
    (Y : Π x, TangentSpace I x) :
    TensorialAt I E (torsionAux cov · Y x) x where
  smul hf hX := by
    simp [torsionAux, hcov.leibniz hX hf, VectorField.mlieBracket_smul_left hf hX]
    module
  add hX hX' := by
    simp [torsionAux, hcov.add hX hX', VectorField.mlieBracket_add_left hX hX']
    module

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cc833a78f38a9abc2e3899d27866eb55054909a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
