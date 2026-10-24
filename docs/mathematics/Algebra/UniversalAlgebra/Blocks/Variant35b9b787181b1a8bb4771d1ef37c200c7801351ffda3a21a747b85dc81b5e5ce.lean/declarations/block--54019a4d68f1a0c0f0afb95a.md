# block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0be5c7abea822a8ced1620c80d128beebdbfbfacf9ffbadc44638cd5fd2e40fd",
  "kind": "def",
  "lexical_name": "block",
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
  "slug": "block--54019a4d68f1a0c0f0afb95a",
  "source": {
    "blob": "b06a466f0bede49d2cf036e9498fb595ab66e82a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 164,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54019a4d68f1a0c0f0afb95aa375a7a2d5903a45f56d9eb540cd323320a44708",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0be5c7abea822a8ced1620c80d128beebdbfbfacf9ffbadc44638cd5fd2e40fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def block {r : Nat} (hr : 0 < r) (payload : BitString) : BitPacket r := by
  let rows := rowsFor r payload.bitLength
  let padded : Bits (rows * r) := fun k =>
    if h : k.val < payload.bitLength then payload.bits ⟨k.val, h⟩ else false
  let matrix : BinMat rows r :=
    (BinMatGalois.flattenEquiv rows r).symm padded
  refine ⟨⟨rows, matrix, payload.bitLength⟩, ?_⟩
  refine ⟨payloadBits_le_rowsFor_mul hr payload.bitLength, rfl, ?_⟩
  intro k hk
  simp only [matrix, Equiv.apply_symm_apply]
  simp [padded, Nat.not_lt.mpr hk]

/-- Discard canonical padding using the packet's retained payload length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b06a466f0bede49d2cf036e9498fb595ab66e82a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
