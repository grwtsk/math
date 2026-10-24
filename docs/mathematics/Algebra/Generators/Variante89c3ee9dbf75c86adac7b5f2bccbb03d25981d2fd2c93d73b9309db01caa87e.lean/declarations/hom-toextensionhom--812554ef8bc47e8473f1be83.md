# Hom.toExtensionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d743cce9c55b4a285ba094977eac18eb6dfd572f0b82c7afc3fb40c0858396f",
  "kind": "def",
  "lexical_name": "Hom.toExtensionHom",
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
  "slug": "hom-toextensionhom--812554ef8bc47e8473f1be83",
  "source": {
    "blob": "412d88c2574a8c795883acfb12eda1de4ce5c4f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 608,
    "path": "GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:812554ef8bc47e8473f1be83ab5b3d9618d8d2c9f419ed5b87150305e2a28b4e",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d743cce9c55b4a285ba094977eac18eb6dfd572f0b82c7afc3fb40c0858396f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.toExtensionHom [Algebra R S'] [IsScalarTower R R' S'] [IsScalarTower R S S']
    (f : P.Hom P') : P.toExtension.Hom P'.toExtension where
  toRingHom := f.toAlgHom.toRingHom
  toRingHom_algebraMap x := by simp
  algebraMap_toRingHom x := by simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `412d88c2574a8c795883acfb12eda1de4ce5c4f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
