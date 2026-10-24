# Cotangent.map_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e41db89-c5b6-9ded-f9e1-1563b0adeacf",
  "kind": "lemma",
  "lexical_name": "Cotangent.map_id",
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
  "slug": "cotangent-map-id--86f4be03cad7e0bde1ef6012",
  "source": {
    "blob": "62b70d574e93968f180bdcda95c79b34eae29422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 495,
    "path": "GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86f4be03cad7e0bde1ef60121e5affbe2bd29dabbe3fc632c09549853b9f2fbe",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e41db89-c5b6-9ded-f9e1-1563b0adeacf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cotangent.map_id :
    Cotangent.map (.id P) = LinearMap.id := by
  ext x
  obtain ⟨x, rfl⟩ := Cotangent.mk_surjective x
  simp only [map_mk, Hom.toAlgHom_id, AlgHom.coe_id, id_eq, Subtype.coe_eta, val_mk,
    LinearMap.id_coe]

variable [Algebra R R''] [IsScalarTower R R' R''] [IsScalarTower R' R'' S'']
  [Algebra R S''] [IsScalarTower R R'' S''] [IsScalarTower S S' S'']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b70d574e93968f180bdcda95c79b34eae29422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
