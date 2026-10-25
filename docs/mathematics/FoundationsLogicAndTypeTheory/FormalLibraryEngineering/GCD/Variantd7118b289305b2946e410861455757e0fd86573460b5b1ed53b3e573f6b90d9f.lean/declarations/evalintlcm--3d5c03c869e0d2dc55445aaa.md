# evalIntLCM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ba1d998e01beccd1905485d818c5fb524448a80ef2de07f99a7faae5cf64653",
  "kind": "def",
  "lexical_name": "evalIntLCM",
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
  "slug": "evalintlcm--3d5c03c869e0d2dc55445aaa",
  "source": {
    "blob": "6813bc8c457c4ee7450cdc93695a227a1f658164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d5c03c869e0d2dc55445aaa69b7c9778aa8f5ea345bad57458b5065c638918d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ba1d998e01beccd1905485d818c5fb524448a80ef2de07f99a7faae5cf64653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntLCM : NormNumExt where eval {u α} e := do
  let .app (.app _ (x : Q(ℤ))) (y : Q(ℤ)) ← Meta.whnfR e | failure
  let ⟨ex, p⟩ ← deriveInt x _
  let ⟨ey, q⟩ ← deriveInt y _
  haveI' : u =QL 0 := ⟨⟩; haveI' : $α =Q ℕ := ⟨⟩
  haveI' : $e =Q Int.lcm $x $y := ⟨⟩
  let ⟨ed, pf⟩ := proveIntLCM ex ey
  return .isNat _ ed q(isInt_lcm $p $q $pf)

end NormNum

end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6813bc8c457c4ee7450cdc93695a227a1f658164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
