# fmod_add_mul_fdiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56b03c6a-2a18-96e4-b848-aa65922e5caf",
  "kind": "theorem",
  "lexical_name": "fmod_add_mul_fdiv",
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
  "slug": "fmod-add-mul-fdiv--0a5fd6904c943f2252d78db5",
  "source": {
    "blob": "5bb2d722bba2a1af48bae7b7869bafe4599eeb43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a5fd6904c943f2252d78db593c665a2a434b9be4c0ff08dbb80826c1f6a5e81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b03c6a-2a18-96e4-b848-aa65922e5caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fmod_add_mul_fdiv : ∀ a b : Int, a.fmod b + b * a.fdiv b = a
  | 0, ofNat _ | 0, -[_+1] => congrArg ofNat <| by simp
  | succ _, ofNat _ => congrArg ofNat <| Nat.mod_add_div ..
  | succ m, -[n+1] => by
    change subNatNat (m % succ n) n + (↑(succ n * (m / succ n)) + n + 1) = (m + 1)
    rw [Int.add_comm _ n, ← Int.add_assoc, ← Int.add_assoc,
      Int.subNatNat_eq_coe, Int.sub_add_cancel]
    exact congrArg (ofNat · + 1) <| Nat.mod_add_div ..
  | -[_+1], 0 => by rw [fmod_zero]; rfl
  | -[m+1], succ n => by
    change subNatNat .. - (↑(succ n * (m / succ n)) + ↑(succ n)) = -↑(succ m)
    rw [Int.subNatNat_eq_coe, ← Int.sub_sub, ← Int.neg_sub, Int.sub_sub, Int.sub_sub_self]
    exact congrArg (-ofNat ·) <| Nat.succ_add .. ▸ Nat.mod_add_div .. ▸ rfl
  | -[m+1], -[n+1] => by
    change -(↑(succ m % succ n) : Int) + -↑(succ n * (succ m / succ n)) = -↑(succ m)
    rw [← Int.neg_add]; exact congrArg (-ofNat ·) <| Nat.mod_add_div ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2d722bba2a1af48bae7b7869bafe4599eeb43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
