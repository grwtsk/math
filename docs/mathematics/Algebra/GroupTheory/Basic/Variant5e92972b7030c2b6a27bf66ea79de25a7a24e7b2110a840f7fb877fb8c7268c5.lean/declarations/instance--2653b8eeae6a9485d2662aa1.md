# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a18b9db5b70f5bf7c57debaa40461cb158e2b9d6e2c2cfb3a3da746d668968f1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2653b8eeae6a9485d2662aa1",
  "source": {
    "blob": "460cbc0ff23243f509960c3ec0b62c40f752aab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 577,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2653b8eeae6a9485d2662aa1282fbfc4b5aeff6296018b66421146c0be4f1e61",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a18b9db5b70f5bf7c57debaa40461cb158e2b9d6e2c2cfb3a3da746d668968f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Subsingleton (Subfield (ZMod p)) :=
  subsingleton_of_bot_eq_top <| top_unique (a := ⊥) fun n _ ↦
  have := zsmul_mem (one_mem (⊥ : Subfield (ZMod p))) n.val
  by rwa [natCast_zsmul, Nat.smul_one_eq_cast, ZMod.natCast_zmod_val] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `460cbc0ff23243f509960c3ec0b62c40f752aab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
