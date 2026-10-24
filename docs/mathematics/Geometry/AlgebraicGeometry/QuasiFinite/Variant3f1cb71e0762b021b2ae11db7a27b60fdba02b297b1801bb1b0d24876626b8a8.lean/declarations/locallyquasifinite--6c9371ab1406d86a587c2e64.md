# LocallyQuasiFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31e45bdb022256b8149fcc8c0aa0cdfa042e1d5517e22888a6cdcb6aa2ecf204",
  "kind": "class",
  "lexical_name": "LocallyQuasiFinite",
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
  "slug": "locallyquasifinite--6c9371ab1406d86a587c2e64",
  "source": {
    "blob": "47be796e20c03ee563fa601d2a4a87163338f74c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 79,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c9371ab1406d86a587c2e64ad4d0b0b785a23a90308ce75af5a0dba4fba3dfa",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31e45bdb022256b8149fcc8c0aa0cdfa042e1d5517e22888a6cdcb6aa2ecf204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LocallyQuasiFinite : Prop where
  quasiFinite_appLE :
    ∀ {U : Y.Opens} (_ : IsAffineOpen U) {V : X.Opens} (_ : IsAffineOpen V) (e : V ≤ f ⁻¹ᵁ U),
      (f.appLE U V e).hom.QuasiFinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47be796e20c03ee563fa601d2a4a87163338f74c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
