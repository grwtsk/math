# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:977c3776cff9a0a3f48691b1dba165115d8f41d4b09a504176ceb5b6b66140cc",
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
  "slug": "instance--7c49dcdd958f5d41025d5fb7",
  "source": {
    "blob": "b0e1ce6c8c8e71c6904dfa7f44921e9674dcb7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c49dcdd958f5d41025d5fb7937f6c7cdf8b983a00fcc985cc803aa2e1fb9138",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:977c3776cff9a0a3f48691b1dba165115d8f41d4b09a504176ceb5b6b66140cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing ISize where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := ISize.add_assoc
  add_comm := ISize.add_comm
  add_zero := ISize.add_zero
  neg_add_cancel := ISize.add_left_neg
  mul_assoc := ISize.mul_assoc
  mul_comm := ISize.mul_comm
  mul_one := ISize.mul_one
  one_mul := ISize.one_mul
  left_distrib _ _ _ := ISize.mul_add
  right_distrib _ _ _ := ISize.add_mul
  zero_mul _ := ISize.zero_mul
  mul_zero _ := ISize.mul_zero
  sub_eq_add_neg := ISize.sub_eq_add_neg
  pow_zero := ISize.pow_zero
  pow_succ := ISize.pow_succ
  ofNat_succ x := ISize.ofNat_add x 1
  intCast_neg := ISize.ofInt_neg
  neg_zsmul i x := by
    change (-i : Int) * x = - (i * x)
    simp [ISize.intCast_neg, ISize.neg_mul]
  zsmul_natCast_eq_nsmul n a := congrArg (· * a) (ISize.intCast_ofNat _)

open System.Platform (numBits)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e1ce6c8c8e71c6904dfa7f44921e9674dcb7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
