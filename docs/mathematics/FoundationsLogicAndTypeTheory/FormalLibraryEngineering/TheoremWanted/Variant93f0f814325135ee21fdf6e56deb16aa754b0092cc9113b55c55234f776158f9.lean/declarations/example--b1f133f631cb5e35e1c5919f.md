# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:166a7cbb3e6d6f391d57e2f0007220889d6db1b7abb16bce7e2eb91d240587c9",
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
  "slug": "example--b1f133f631cb5e35e1c5919f",
  "source": {
    "blob": "a0194c391acd05287988099602c0ee2222c8c77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Variant93f0f814325135ee21fdf6e56deb16aa754b0092cc9113b55c55234f776158f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1f133f631cb5e35e1c5919fc8198d50f57d1960805553a0301f1c67cb21e901",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Variant93f0f814325135ee21fdf6e56deb16aa754b0092cc9113b55c55234f776158f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:166a7cbb3e6d6f391d57e2f0007220889d6db1b7abb16bce7e2eb91d240587c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : True := trivial

/-! ## Synonym

`proof_wanted` is an accepted synonym for `theorem_wanted` (expected to be deprecated eventually).
It shares the elaborator, so it records the same `ProofWanted` placeholder, reports its own keyword
in error messages, and cross-references `theorem_wanted` / `def_wanted` freely. -/

proof_wanted syn_basic : 1 = 1

/--
info: syn_basic : ProofWanted (1 = 1)
-/
#guard_msgs in #check @syn_basic

/-! A `proof_wanted` body with no `❰…❱` reference reports the `proof_wanted` keyword. -/
/--
info: Try this:
  [apply] theorem syn_trivial : True :=
    trivial
---
error: `proof_wanted` with a body but no `❰…❱` reference is just a `theorem`; either replace `proof_wanted` with `theorem`, or reference another `theorem_wanted` / `proof_wanted` / `def_wanted` / `instance_wanted` via `❰…❱` in the statement or body
-/
#guard_msgs in proof_wanted syn_trivial : True := trivial

/-! `proof_wanted` and `theorem_wanted` cross-reference each other; the binder prefix is `h_`
either way, since both record a `ProofWanted`. -/
proof_wanted syn_a : (0 : Nat) = 1

theorem_wanted syn_b : ❰syn_a❱ = ❰syn_a❱ := rfl

/--
info: @syn_b : {h_syn_a : syn_a.Stmt} → ProofWanted (h_syn_a = h_syn_a)
-/
#guard_msgs in #check @syn_b
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Variant93f0f814325135ee21fdf6e56deb16aa754b0092cc9113b55c55234f776158f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Variant93f0f814325135ee21fdf6e56deb16aa754b0092cc9113b55c55234f776158f9.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0194c391acd05287988099602c0ee2222c8c77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
