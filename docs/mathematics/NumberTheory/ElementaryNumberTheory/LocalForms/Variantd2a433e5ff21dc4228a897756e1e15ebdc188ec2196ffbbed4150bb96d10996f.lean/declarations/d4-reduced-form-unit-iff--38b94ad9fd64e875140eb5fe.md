# d4_reduced_form_unit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71651c86-5348-c44d-fbec-dc28333a30dd",
  "kind": "theorem",
  "lexical_name": "d4_reduced_form_unit_iff",
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
  "slug": "d4-reduced-form-unit-iff--38b94ad9fd64e875140eb5fe",
  "source": {
    "blob": "865c5e40b7269db7f8432b94cb1e844fe269a4c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b94ad9fd64e875140eb5fe0925d78f977662a3e67d1def57848c9a80c6e51b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71651c86-5348-c44d-fbec-dc28333a30dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d4_reduced_form_unit_iff (m : ℕ) :
    IsUnit (d4ReducedCartan m) ↔ Nat.Coprime 4 m := by
  rw [isUnit_iff_isUnit_det, d4_reduced_determinant]
  exact ZMod.isUnit_iff_coprime 4 m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865c5e40b7269db7f8432b94cb1e844fe269a4c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
