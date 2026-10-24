# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afc4798c-f382-73bc-8757-c26d3cdc7fee",
  "kind": "theorem",
  "lexical_name": "map",
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
  "slug": "map--65ce4bdd4dd715898fc1ff4b",
  "source": {
    "blob": "06c3a48d961f5fe5edab2d399be3bfecd4087a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 373,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65ce4bdd4dd715898fc1ff4bae27bc30dbd97cf651d47079f2339cb583acd0bf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afc4798c-f382-73bc-8757-c26d3cdc7fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map [Fact p.Prime] {f} (hf : IsPoly₂ p f) (g : R →+* S) (x y : 𝕎 R) :
    map g (f x y) = f (map g x) (map g y) := by
  -- this could be turned into a tactic “macro” (taking `hf` as parameter)
  -- so that applications do not have to worry about the universe issue
  obtain ⟨φ, hf⟩ := hf
  ext n
  simp +unfoldPartialApp only [map_coeff, hf, map_aeval, peval, uncurry]
  apply eval₂Hom_congr (RingHom.ext_int _ _) _ rfl
  ext ⟨i, k⟩
  fin_cases i <;> simp

end IsPoly₂

attribute [ghost_simps] AlgHom.id_apply map_natCast RingHom.map_zero RingHom.map_one RingHom.map_mul
  RingHom.map_add RingHom.map_sub RingHom.map_neg RingHom.id_apply mul_add add_mul add_zero zero_add
  mul_one one_mul mul_zero zero_mul Nat.succ_ne_zero add_tsub_cancel_right
  Nat.succ_eq_add_one if_true eq_self_iff_true if_false forall_true_iff forall₂_true_iff
  forall₃_true_iff

end

namespace Tactic
open Lean Parser.Tactic Elab.Tactic

/-- A macro for a common simplification when rewriting with ghost component equations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c3a48d961f5fe5edab2d399be3bfecd4087a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
