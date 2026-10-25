# evalIntDvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f612a7f931628d85b65c1b98d1f1052d8fda8e35513b6d93d219bc7d436ac53b",
  "kind": "def",
  "lexical_name": "evalIntDvd",
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
  "slug": "evalintdvd--67e6ff41e9c502570ee47cab",
  "source": {
    "blob": "8d0b6b00bb7ab87a307413f8d1f1f4df639660c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67e6ff41e9c502570ee47cabc85085f68f73c73bea29d6324fd98dcb54a05091",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f612a7f931628d85b65c1b98d1f1052d8fda8e35513b6d93d219bc7d436ac53b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num (_ : ℤ) ∣ _] def evalIntDvd : NormNumExt where eval {u α} e := do
  let .app (.app f (a : Q(ℤ))) (b : Q(ℤ)) ← whnfR e | failure
  haveI' : u =QL 0 := ⟨⟩; haveI' : $α =Q Prop := ⟨⟩
  haveI' : $e =Q ($a ∣ $b) := ⟨⟩
  -- We assert that the default instance for `Dvd` is `Int.dvd` when the first parameter is `ℕ`.
  guard <|← withNewMCtxDepth <| isDefEq f q(Dvd.dvd (α := ℤ))
  let rℤ : Q(Ring ℤ) := q(Int.instRing)
  let ⟨za, na, pa⟩ ← (← derive a).toInt rℤ
  let ⟨zb, nb, pb⟩ ← (← derive b).toInt rℤ
  if zb % za == 0 then
    let zc := zb / za
    have c := mkRawIntLit zc
    haveI' : Int.mul $na $c =Q $nb := ⟨⟩
    return .isTrue q(isInt_dvd_true $pa $pb (.refl $nb))
  else
    have : Q(Int.emod $nb $na != 0) := (q(Eq.refl true) : Expr)
    return .isFalse q(isInt_dvd_false $pa $pb $this)

end Mathlib.Meta.NormNum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0b6b00bb7ab87a307413f8d1f1f4df639660c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
