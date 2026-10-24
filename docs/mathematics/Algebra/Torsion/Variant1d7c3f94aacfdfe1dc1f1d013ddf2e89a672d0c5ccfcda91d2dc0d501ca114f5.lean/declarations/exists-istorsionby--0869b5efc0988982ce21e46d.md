# exists_isTorsionBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d35e8891b58df9ba9064872f734020449e518115",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 841,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48b68cfd-5059-f2d1-97f0-cef0163fb5d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5e7e74d-6122-fafe-bf94-83ed3347dd76",
  "kind": "theorem",
  "lexical_name": "exists_isTorsionBy",
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
  "slug": "exists-istorsionby--0869b5efc0988982ce21e46d",
  "source": {
    "blob": "d35e8891b58df9ba9064872f734020449e518115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 841,
    "path": "GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0869b5efc0988982ce21e46d80055079a3286c85ea4c978f11025c59d929a1b1",
  "verification": {
    "reference": "docs/verification/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5e7e74d-6122-fafe-bf94-83ed3347dd76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isTorsionBy {p : R} (hM : IsTorsion' M <| Submonoid.powers p) (d : ℕ) (hd : d ≠ 0)
    (s : Fin d → M) (hs : span R (Set.range s) = ⊤) :
    ∃ j : Fin d, Module.IsTorsionBy R M (p ^ pOrder hM (s j)) := by
  let oj := List.argmax (fun i => pOrder hM <| s i) (List.finRange d)
  have hoj : oj.isSome :=
    Option.ne_none_iff_isSome.mp fun eq_none =>
      hd <| List.finRange_eq_nil.mp <| List.argmax_eq_none.mp eq_none
  use Option.get _ hoj
  rw [isTorsionBy_iff_torsionBy_eq_top, eq_top_iff, ← hs, Submodule.span_le,
    Set.range_subset_iff]
  intro i; change (p ^ pOrder hM (s (Option.get oj hoj))) • s i = 0
  have : pOrder hM (s i) ≤ pOrder hM (s <| Option.get _ hoj) :=
    List.le_of_mem_argmax (List.mem_finRange i) (Option.get_mem hoj)
  rw [← Nat.sub_add_cancel this, pow_add, mul_smul, pow_pOrder_smul, smul_zero]

end PTorsion

end Submodule

namespace Ideal.Quotient

open Submodule

universe w
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d35e8891b58df9ba9064872f734020449e518115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
