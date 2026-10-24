# primitiveZModChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9879da9eb5852e7c189ca789bb5ba88430cc561169fafc1f9cba1b772c166b40",
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
  "slug": "primitivezmodchar--2301b6e990dc3f54ba541c5b",
  "source": {
    "blob": "d807b175c16a3f14dd9271058900c8a2414e79b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 379,
    "path": "GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2301b6e990dc3f54ba541c5bd763fb6f3a6feb89fa57ded7f7a8b470b7a416d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9879da9eb5852e7c189ca789bb5ba88430cc561169fafc1f9cba1b772c166b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def primitiveZModChar (n : ℕ+) (F' : Type v) [Field F'] (h : (n : F') ≠ 0) :
    PrimitiveAddChar (ZMod n) F' :=
  haveI : NeZero ((n : ℕ) : F') := ⟨h⟩
  ⟨n, zmodChar n (IsCyclotomicExtension.zeta_pow n F' _),
    zmodChar_primitive_of_primitive_root n (IsCyclotomicExtension.zeta_spec n F' _)⟩
#align add_char.primitive_zmod_char AddChar.primitiveZModChar

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

[Verification target and public status](../../../../../verification/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d807b175c16a3f14dd9271058900c8a2414e79b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
