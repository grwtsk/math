# instIsStrictOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a360ad2c64fdf36417f8aa85aa2a98205c4b2641c750abe0a7f119a78cff458d",
  "kind": "instance",
  "lexical_name": "instIsStrictOrderedRing",
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
  "slug": "instisstrictorderedring--139861898afaa25e8985ff91",
  "source": {
    "blob": "bbbfb887fb501090531076e5fa3d62be6f2f9361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:139861898afaa25e8985ff91c4711cac7c25e35f4ef6b84f1557ee75584aa0a4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a360ad2c64fdf36417f8aa85aa2a98205c4b2641c750abe0a7f119a78cff458d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsStrictOrderedRing : IsStrictOrderedRing ℕ where
  add_le_add_left := @Nat.add_le_add_left
  le_of_add_le_add_left := @Nat.le_of_add_le_add_left
  zero_le_one := Nat.le_of_lt (Nat.zero_lt_succ 0)
  mul_lt_mul_of_pos_left := @Nat.mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right := @Nat.mul_lt_mul_of_pos_right
  exists_pair_ne := ⟨0, 1, ne_of_lt Nat.zero_lt_one⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbfb887fb501090531076e5fa3d62be6f2f9361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
