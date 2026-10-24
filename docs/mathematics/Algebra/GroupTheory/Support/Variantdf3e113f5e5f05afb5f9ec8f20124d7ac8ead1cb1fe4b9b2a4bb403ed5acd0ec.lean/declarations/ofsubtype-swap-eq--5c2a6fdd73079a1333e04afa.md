# ofSubtype_swap_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ac8a3ca-d3e6-a969-4675-986e4c1524b6",
  "kind": "theorem",
  "lexical_name": "ofSubtype_swap_eq",
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
  "slug": "ofsubtype-swap-eq--5c2a6fdd73079a1333e04afa",
  "source": {
    "blob": "c93e8693cb63e251b69461c06aa8d1f21b23e0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 205,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c2a6fdd73079a1333e04afafcf28f9a85b9216c304fee46b31231084f06b9be",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ac8a3ca-d3e6-a969-4675-986e4c1524b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofSubtype_swap_eq {p : α → Prop} [DecidablePred p] (x y : Subtype p) :
    ofSubtype (Equiv.swap x y) = Equiv.swap ↑x ↑y :=
  Equiv.ext fun z => by
    by_cases hz : p z
    · rw [swap_apply_def, ofSubtype_apply_of_mem _ hz]
      split_ifs with hzx hzy
      · simp_rw [hzx, Subtype.coe_eta, swap_apply_left]
      · simp_rw [hzy, Subtype.coe_eta, swap_apply_right]
      · rw [swap_apply_of_ne_of_ne] <;>
        simp [Subtype.ext_iff, *]
    · rw [ofSubtype_apply_of_not_mem _ hz, swap_apply_of_ne_of_ne]
      · intro h
        apply hz
        rw [h]
        exact Subtype.prop x
      intro h
      apply hz
      rw [h]
      exact Subtype.prop y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93e8693cb63e251b69461c06aa8d1f21b23e0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
