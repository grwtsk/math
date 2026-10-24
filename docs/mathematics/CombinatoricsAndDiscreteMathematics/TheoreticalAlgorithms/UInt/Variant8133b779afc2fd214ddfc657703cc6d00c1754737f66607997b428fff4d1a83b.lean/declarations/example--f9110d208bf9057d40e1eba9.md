# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac9d7cbe365b2ca5c41003e3141e0206c13606af6fa5291aef45e2a65fde5a88",
  "kind": "example",
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
  "slug": "example--f9110d208bf9057d40e1eba9",
  "source": {
    "blob": "411a1ca453ae29714ff44e777ee9ec2a1ed92023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UInt/Variant8133b779afc2fd214ddfc657703cc6d00c1754737f66607997b428fff4d1a83b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9110d208bf9057d40e1eba95f4a36b591d2f4c9053fb6fa6b7371ba623a7ee6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UInt/Variant8133b779afc2fd214ddfc657703cc6d00c1754737f66607997b428fff4d1a83b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac9d7cbe365b2ca5c41003e3141e0206c13606af6fa5291aef45e2a65fde5a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (0 : UInt8) = ⟨0⟩ := rfl

-- set_option hygiene false in
-- run_cmd
--   for typeName' in [`UInt8, `UInt16, `UInt32, `UInt64, `USize] do
--   let typeName := Lean.mkIdent typeName'
--   Lean.Elab.Command.elabCommand (← `(
--     namespace $typeName

--       instance : Pow $typeName ℕ where
--         pow a n := ofBitVec ⟨a.toFin ^ n⟩

--       instance : SMul ℕ $typeName where
--         smul n a := ofBitVec ⟨n • a.toFin⟩

--       instance : SMul ℤ $typeName where
--         smul z a := ofBitVec ⟨z • a.toFin⟩

--       lemma neg_def (a : $typeName) : -a = ⟨⟨-a.toFin⟩⟩ := rfl

--       lemma nsmul_def (n : ℕ) (a : $typeName) : n • a = ⟨⟨n • a.toFin⟩⟩ := rfl

--       lemma zsmul_def (z : ℤ) (a : $typeName) : z • a = ⟨⟨z • a.toFin⟩⟩ := rfl

--       open $typeName (eq_of_toFin_eq) in
--       lemma toFin_injective : Function.Injective toFin := @eq_of_toFin_eq

--       @[deprecated toFin_injective (since := "2025-02-13")]
--       lemma val_injective : Function.Injective toFin := toFin_injective

--       open $typeName (eq_of_toBitVec_eq) in
--       lemma toBitVec_injective : Function.Injective toBitVec := @eq_of_toBitVec_eq

--       instance instCommMonoid : CommMonoid $typeName :=
--         Function.Injective.commMonoid toBitVec toBitVec_injective
--           rfl (fun _ _ => rfl) (fun _ _ => rfl)

--       instance instNonUnitalCommRing : NonUnitalCommRing $typeName :=
--         Function.Injective.nonUnitalCommRing toBitVec toBitVec_injective
--           rfl (fun _ _ => rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
--           (fun _ _ => rfl) (fun _ _ => rfl)

--       local instance instNatCast : NatCast $typeName where
--         natCast n := ofBitVec n

--       lemma natCast_def (n : ℕ) : (n : $typeName) = ofBitVec n := rfl

--       lemma intCast_def (z : ℤ) : (z : $typeName) = ofBitVec z := rfl

--       local instance instCommRing : CommRing $typeName :=
--         Function.Injective.commRing toBitVec toBitVec_injective
--           rfl rfl (fun _ _ => rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
--           (fun _ _ => rfl) (fun _ _ => rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ => rfl)

--       namespace CommRing
--       attribute [scoped instance] instCommRing instNatCast instIntCast
--       end CommRing

--     end $typeName
--   ))
--   -- interpolating docstrings above is more trouble than it's worth
--   let docString :=
--     s!"To use this instance, use `open scoped {typeName'}.CommRing`.\n\n" ++
--     "See the module docstring for an explanation"
--   Lean.addDocStringCore (typeName'.mkStr "instCommRing") docString
--   Lean.addDocStringCore (typeName'.mkStr "instNatCast") docString
--   Lean.addDocStringCore (typeName'.mkStr "instIntCast") docString

namespace UInt8

/-- Is this an uppercase ASCII letter? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UInt/Variant8133b779afc2fd214ddfc657703cc6d00c1754737f66607997b428fff4d1a83b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UInt/Variant8133b779afc2fd214ddfc657703cc6d00c1754737f66607997b428fff4d1a83b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411a1ca453ae29714ff44e777ee9ec2a1ed92023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
