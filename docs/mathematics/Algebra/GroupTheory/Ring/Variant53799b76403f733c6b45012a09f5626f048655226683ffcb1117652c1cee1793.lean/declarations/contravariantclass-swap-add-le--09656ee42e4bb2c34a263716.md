# contravariantClass_swap_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2a852f0ac940038c79e32dfbc8642076118720ee46d2fc771d3678b9341d733",
  "kind": "instance",
  "lexical_name": "contravariantClass_swap_add_le",
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
  "slug": "contravariantclass-swap-add-le--09656ee42e4bb2c34a263716",
  "source": {
    "blob": "a9f802372208fb86bae82fa31f0bd5c0497c21da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09656ee42e4bb2c34a263716e678607e86af7b5eae04c19afbd271d96acbe521",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2a852f0ac940038c79e32dfbc8642076118720ee46d2fc771d3678b9341d733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance contravariantClass_swap_add_le [ContravariantClass M M (swap (· + ·)) (· ≤ ·)] :
    ContravariantClass { x : M // 0 < x } { x : M // 0 < x } (swap (· + ·)) (· ≤ ·) :=
  ⟨fun _ _ _ h => Subtype.coe_le_coe.1 <| le_of_add_le_add_right h⟩
#align positive.contravariant_class_swap_add_le Positive.contravariantClass_swap_add_le

end AddBasic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f802372208fb86bae82fa31f0bd5c0497c21da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
