# coeff.addMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e710a51df8d9960faa935511c7f630d014b1ad8b1db6dd73e8a5a6b9ee5e51f",
  "kind": "def",
  "lexical_name": "coeff.addMonoidHom",
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
  "slug": "coeff-addmonoidhom--b66d6fceb17003810cdf6cb6",
  "source": {
    "blob": "9dbda9566542d94895f87dc69c0c0fef4d55ea13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 263,
    "path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b66d6fceb17003810cdf6cb61190fdecc66a13842e43a8fb53f91750f383226e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e710a51df8d9960faa935511c7f630d014b1ad8b1db6dd73e8a5a6b9ee5e51f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeff.addMonoidHom (g : Γ) : HahnSeries Γ R →+ R where
  toFun f := f.coeff g
  map_zero' := coeff_zero
  map_add' _ _ := coeff_add

section Domain

variable [PartialOrder Γ']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dbda9566542d94895f87dc69c0c0fef4d55ea13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
