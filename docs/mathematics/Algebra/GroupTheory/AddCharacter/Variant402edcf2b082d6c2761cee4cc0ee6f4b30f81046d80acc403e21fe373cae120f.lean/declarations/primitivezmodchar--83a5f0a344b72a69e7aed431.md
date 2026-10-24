# primitiveZModChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4a674449597c4d8885b6e1dbb0b1b5e03701f57ac60b97c7ef8a6cb0b3d1ea7",
  "kind": "def",
  "lexical_name": "primitiveZModChar",
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
  "slug": "primitivezmodchar--83a5f0a344b72a69e7aed431",
  "source": {
    "blob": "662110ff9188a0f32e66e48f25cb84054e8f30cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 196,
    "path": "GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83a5f0a344b72a69e7aed4318ff3b81c1a40f5f17def012ede523fce1a21a881",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4a674449597c4d8885b6e1dbb0b1b5e03701f57ac60b97c7ef8a6cb0b3d1ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def primitiveZModChar (n : ℕ+) (F' : Type v) [Field F'] (h : (n : F') ≠ 0) :
    PrimitiveAddChar (ZMod n) F' :=
  have : NeZero (n : F') := ⟨h⟩
  ⟨n, zmodChar n (IsCyclotomicExtension.zeta_pow n F' _),
    zmodChar_primitive_of_primitive_root n (IsCyclotomicExtension.zeta_spec n F' _)⟩

end ZModChar

end Additive

/-!
### Existence of a primitive additive character on a finite field
-/

/-- There is a primitive additive character on the finite field `F` if the characteristic
of the target is different from that of `F`.

We obtain it as the composition of the trace from `F` to `ZMod p` with a primitive
additive character on `ZMod p`, where `p` is the characteristic of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662110ff9188a0f32e66e48f25cb84054e8f30cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
