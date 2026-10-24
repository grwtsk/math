# instAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04eb9ce279564af72cfc6d764daaba914ab5ae2fb72f981a1c486d921c6633f1",
  "kind": "instance",
  "lexical_name": "instAddCommGroup",
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
  "slug": "instaddcommgroup--b26c8198acc9f199ecf15a53",
  "source": {
    "blob": "62e8cede2da3b4735071dd87d11e2fa79366b17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 252,
    "path": "GRWTSK/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b26c8198acc9f199ecf15a53b0824d364f757de79c805cf14ecfd6627117ebe9",
  "verification": {
    "reference": "docs/verification/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04eb9ce279564af72cfc6d764daaba914ab5ae2fb72f981a1c486d921c6633f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommGroup : AddCommGroup (PerfectClosure K p) :=
  { (inferInstance : Add (PerfectClosure K p)),
    (inferInstance : Neg (PerfectClosure K p)) with
    add_assoc := fun e f g =>
      Quot.inductionOn e fun ⟨m, x⟩ =>
        Quot.inductionOn f fun ⟨n, y⟩ =>
          Quot.inductionOn g fun ⟨s, z⟩ => by
            simp only [quot_mk_eq_mk, mk_add_mk] -- Porting note: added this line
            apply congr_arg (Quot.mk _)
            simp only [iterate_map_add, ← iterate_add_apply, add_assoc, add_comm s _]
    zero := 0
    zero_add := fun e =>
      Quot.inductionOn e fun ⟨n, x⟩ =>
        congr_arg (Quot.mk _) <| by
          simp only [iterate_map_zero, iterate_zero_apply, zero_add]
    add_zero := fun e =>
      Quot.inductionOn e fun ⟨n, x⟩ =>
        congr_arg (Quot.mk _) <| by
          simp only [iterate_map_zero, iterate_zero_apply, add_zero]
    sub_eq_add_neg := fun _ _ => rfl
    neg_add_cancel := fun e =>
      Quot.inductionOn e fun ⟨n, x⟩ => by
        simp only [quot_mk_eq_mk, neg_mk, mk_add_mk, iterate_map_neg, neg_add_cancel, mk_zero_right]
    add_comm := fun e f =>
      Quot.inductionOn e fun ⟨m, x⟩ =>
        Quot.inductionOn f fun ⟨n, y⟩ => congr_arg (Quot.mk _) <| by simp only [add_comm]
    nsmul := nsmulRec
    zsmul := zsmulRec }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62e8cede2da3b4735071dd87d11e2fa79366b17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
