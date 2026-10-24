# imaginaryCoupling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a7fe924e7addda0546c4de195a21db3f30be02b5d3057207db1ec32bbafd73b",
  "kind": "def",
  "lexical_name": "imaginaryCoupling",
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
  "slug": "imaginarycoupling--6821dee19e236b910b89e02c",
  "source": {
    "blob": "78875f95d634b590745c6cccd031072c3bf0b8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6821dee19e236b910b89e02cd8f840431bb848c26c32d069409960a6f4f79687",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a7fe924e7addda0546c4de195a21db3f30be02b5d3057207db1ec32bbafd73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def imaginaryCoupling : Matrix (Fin 1) (Fin 1) ℂ := fun _ _ => Complex.I

/-- The actual complex Schur correction is `(-I)I = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78875f95d634b590745c6cccd031072c3bf0b8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
