# Submodule.basisOfPidOfLESpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1abc4cf3d302e1864978cf6d7bd5a0129f405fe101b8245aad29de06166fbac8",
  "kind": "def",
  "lexical_name": "Submodule.basisOfPidOfLESpan",
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
  "slug": "submodule-basisofpidoflespan--a3f473f2f104d84f4f5dfb45",
  "source": {
    "blob": "8c284aafc68f2b9cece419f573a69894a4e43e67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 330,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3f473f2f104d84f4f5dfb451a0beaa95481f4c00c9b596837d08ff6b4bf1508",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1abc4cf3d302e1864978cf6d7bd5a0129f405fe101b8245aad29de06166fbac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Submodule.basisOfPidOfLESpan {ι : Type*} [Finite ι] {b : ι → M}
    (hb : LinearIndependent R b) {N : Submodule R M} (le : N ≤ Submodule.span R (Set.range b)) :
    Σ n : ℕ, Basis (Fin n) R N :=
  Submodule.basisOfPidOfLE le (Basis.span hb)

/-- A finite type torsion free module over a PID admits a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c284aafc68f2b9cece419f573a69894a4e43e67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
