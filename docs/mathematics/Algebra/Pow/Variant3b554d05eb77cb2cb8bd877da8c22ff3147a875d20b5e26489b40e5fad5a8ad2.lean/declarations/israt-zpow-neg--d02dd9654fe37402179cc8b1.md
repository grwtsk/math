# isRat_zpow_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1d6968f-4a8e-cc97-b746-399b1de262c6",
  "kind": "theorem",
  "lexical_name": "isRat_zpow_neg",
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
  "slug": "israt-zpow-neg--d02dd9654fe37402179cc8b1",
  "source": {
    "blob": "40a261a1976620191f9815e4a987d5c0503565b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 274,
    "path": "GRWTSK/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d02dd9654fe37402179cc8b110272bdb94d779f803d67e4281c20fc7872e7ed5",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1d6968f-4a8e-cc97-b746-399b1de262c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem isRat_zpow_neg {α : Type*} [DivisionRing α] {a : α} {b : ℤ} {nb : ℕ}
    {num : ℤ} {den : ℕ}
    (pb : IsInt b (Int.negOfNat nb)) (pe' : IsRat ((a ^ nb)⁻¹) num den) :
    IsRat (a ^ b) num den := by
  rwa [pb.out, Int.cast_negOfNat, zpow_neg, zpow_natCast]

#adaptation_note /-- https://github.com/leanprover/lean4/pull/4096
the two
```
have h : $e =Q (HPow.hPow (γ := $α) $a $b) := ⟨⟩
h.check
```
blocks below were not necessary: we just did it once outside the `match rb with` block.
-/
/-- The `norm_num` extension which identifies expressions of the form `a ^ b`,
such that `norm_num` successfully recognises both `a` and `b`, with `b : ℤ`. -/
@[norm_num _ ^ (_ : ℤ)]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a261a1976620191f9815e4a987d5c0503565b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
