# matrixToBytes?_bytesToMatrix_of_codec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f8225fb-fe4f-6892-57b8-1006e0f8ab36",
  "kind": "theorem",
  "lexical_name": "matrixToBytes?_bytesToMatrix_of_codec",
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
  "slug": "matrixtobytes-bytestomatrix-of-codec--b42375d2b071fef74e4f53d4",
  "source": {
    "blob": "915daf3b51f596069e08afcdf9278193815125a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/ByteListMatrixRetraction/Variantabdb2d233d461098/ConditionalListRoundTrip.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b42375d2b071fef74e4f53d44caa569e6c5eeaf08c23f28578c72d842c34b5f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/ByteListMatrixRetraction/Variantabdb2d233d461098/ConditionalListRoundTrip.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f8225fb-fe4f-6892-57b8-1006e0f8ab36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixToBytes?_bytesToMatrix_of_codec
    (C : Byte.ByteCodec)
    (bs : List Byte) :
    matrixToBytesWith C (bytesToMatrixWith C bs) = some bs := by
  change
    some (List.ofFn
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0))) = some bs
  congr
  have hfun :
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0)) =
        (fun i : Fin bs.length => bs.get i) := by
    funext i
    have hbits :
        (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0) = C.toBits (bs.get i) := by
      funext j
      by_cases h : j.val < 8
      · have hj : (⟨j.val, h⟩ : Fin 8) = j := Fin.ext rfl
        simp [h, hj]
      · exact False.elim (h j.isLt)
    rw [hbits, C.roundtrip]
  rw [hfun]
  exact List.ofFn_get bs


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ByteListMatrixRetraction.Variantabdb2d233d461098
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/ByteListMatrixRetraction/Variantabdb2d233d461098/ConditionalListRoundTrip.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/ByteListMatrixRetraction/Variantabdb2d233d461098/ConditionalListRoundTrip.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915daf3b51f596069e08afcdf9278193815125a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
