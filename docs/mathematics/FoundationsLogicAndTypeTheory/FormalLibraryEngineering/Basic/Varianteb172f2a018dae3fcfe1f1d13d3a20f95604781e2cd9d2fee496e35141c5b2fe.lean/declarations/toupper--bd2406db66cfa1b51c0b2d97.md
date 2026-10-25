# toUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc634be08ea4ed0a6118dfd991eb1d581da0986bd4c8122196cd5a1d6026f961",
  "kind": "def",
  "lexical_name": "toUpper",
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
  "slug": "toupper--bd2406db66cfa1b51c0b2d97",
  "source": {
    "blob": "bf5465529069caa7066d8f4b63acd7c441e6fc0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd2406db66cfa1b51c0b2d97b85cc85efee05cef599053993c2b41cc045dabfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc634be08ea4ed0a6118dfd991eb1d581da0986bd4c8122196cd5a1d6026f961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toUpper (c : Char) : Char :=
  if h : 'a'.val ≤ c.val ∧ c.val ≤ 'z'.val then
    ⟨c.val + ('A'.val - 'a'.val), ?_⟩
  else
    c
where finally
  -- This expression is a ground non-value; generalize for better
  -- control on where it is evaluated.
  generalize hx : 'A'.val - 'a'.val = x
  have h₁ : 2^32 ≤ c.val.toNat + x.toNat :=
    @Nat.add_le_add 'a'.val.toNat _ (2^32 - 'a'.val.toNat) _ h.1 (by rw [← hx]; decide)
  have h₂ : c.val.toBitVec.toNat + x.toNat < 2^32 + 0xd800 :=
    Nat.add_lt_of_lt_sub (Nat.lt_of_le_of_lt h.2 (by rw [← hx]; decide))
  have add_eq {x y : UInt32} : (x + y).toNat = (x.toNat + y.toNat) % 2^32 := id rfl
  replace h₂ := Nat.sub_lt_left_of_lt_add h₁ h₂
  exact .inl <| lt_of_eq_of_lt (add_eq.trans (Nat.mod_eq_sub_mod h₁) |>.trans
    (Nat.mod_eq_of_lt (Nat.lt_trans h₂ (by decide)))) h₂

end Char
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5465529069caa7066d8f4b63acd7c441e6fc0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
