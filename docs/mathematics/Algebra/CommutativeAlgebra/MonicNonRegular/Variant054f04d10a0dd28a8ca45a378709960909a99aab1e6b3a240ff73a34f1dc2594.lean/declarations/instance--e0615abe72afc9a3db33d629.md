# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:574cc5c74447c8b0986d98729949cad0189a97957e258a119c7c15608c012c24",
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
  "slug": "instance--e0615abe72afc9a3db33d629",
  "source": {
    "blob": "485529f53ea6239e5e291b466c6e72cac30fadd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0615abe72afc9a3db33d629225dcd95181bc1ced10b712f2adfb688e98d64b2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:574cc5c74447c8b0986d98729949cad0189a97957e258a119c7c15608c012c24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommSemiring N₃ where
  add_assoc := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
  zero_add  := by rintro ⟨⟩ <;> rfl
  add_zero  := by rintro ⟨⟩ <;> rfl
  add_comm  := by rintro ⟨⟩ ⟨⟩ <;> rfl
  left_distrib := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
  right_distrib := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
  mul_assoc := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
  mul_comm := by rintro ⟨⟩ ⟨⟩ <;> rfl
  zero_mul := by rintro ⟨⟩ <;> rfl
  mul_zero := by rintro ⟨⟩ <;> rfl
  one_mul := by rintro ⟨⟩ <;> rfl
  mul_one := by rintro ⟨⟩ <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485529f53ea6239e5e291b466c6e72cac30fadd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
