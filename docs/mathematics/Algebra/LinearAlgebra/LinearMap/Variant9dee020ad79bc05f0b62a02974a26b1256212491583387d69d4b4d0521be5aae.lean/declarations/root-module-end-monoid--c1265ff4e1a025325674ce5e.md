# _root_.Module.End.monoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07a330aa2f882557727b14c2a690aa078bc7f9858fbf43896de65138800c5905",
  "kind": "instance",
  "lexical_name": "_root_.Module.End.monoid",
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
  "slug": "root-module-end-monoid--c1265ff4e1a025325674ce5e",
  "source": {
    "blob": "9feb83ebac684637800434c22c833cd2628a0c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1062,
    "line": 1055,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1265ff4e1a025325674ce5ea0a23010703a82404dde5df692c2c5f86eaaab61",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07a330aa2f882557727b14c2a690aa078bc7f9858fbf43896de65138800c5905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1062.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.Module.End.monoid : Monoid (Module.End R M) where
  mul := (· * ·)
  one := (1 : M →ₗ[R] M)
  mul_assoc f g h := LinearMap.ext fun x ↦ rfl
  mul_one := comp_id
  one_mul := id_comp
#align module.End.monoid Module.End.monoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9feb83ebac684637800434c22c833cd2628a0c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
