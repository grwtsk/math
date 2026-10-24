# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bdb219989a42bfafec3d3d19554e8014ec7a2ac9395364c971c76f51eef084a",
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
  "slug": "instance--f4a350a618e3eefe1b0feeb8",
  "source": {
    "blob": "0ca7ae6840e8b50dca55a407ff9a7f194b3d7437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 302,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4a350a618e3eefe1b0feeb8325071e3dc989c84179aefd7673f027abd986cd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bdb219989a42bfafec3d3d19554e8014ec7a2ac9395364c971c76f51eef084a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {S : Type*} [Semiring R] [AddCommMonoid S] [Module R S] :
    Module R (ArithmeticFunction S) where
  smul x f := ⟨x • f, by simp⟩
  smul_zero x := ext fun n ↦ smul_zero x
  smul_add x f g := ext fun n ↦ smul_add x (f n) (g n)
  zero_smul f := ext fun n ↦ zero_smul R (f n)
  one_smul f := ext fun n ↦ one_smul R (f n)
  add_smul x y f := ext fun n ↦ add_smul x y (f n)
  mul_smul x y f := ext fun n ↦ mul_smul x y (f n)

-- note that `smul_apply` would be a more suitable name, but is already in use for the action of
-- `ArithmeticFunction R` on `ArithmeticFunction S`
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca7ae6840e8b50dca55a407ff9a7f194b3d7437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
