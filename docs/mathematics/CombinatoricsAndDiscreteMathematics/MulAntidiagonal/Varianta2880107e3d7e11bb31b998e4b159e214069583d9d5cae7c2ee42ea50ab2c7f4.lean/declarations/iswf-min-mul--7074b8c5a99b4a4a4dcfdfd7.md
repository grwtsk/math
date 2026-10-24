# IsWF.min_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5fe693a-7efe-e805-ea77-f6614940b0d1",
  "kind": "theorem",
  "lexical_name": "IsWF.min_mul",
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
  "slug": "iswf-min-mul--7074b8c5a99b4a4a4dcfdfd7",
  "source": {
    "blob": "983032590eeaa27ab3193ba11f89475d1c82766b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7074b8c5a99b4a4a4dcfdfd7e9d902e442b78a0e64799274ebee7da33d87fcf8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5fe693a-7efe-e805-ea77-f6614940b0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWF.min_mul (hs : s.IsWF) (ht : t.IsWF) (hsn : s.Nonempty) (htn : t.Nonempty) :
    (hs.mul ht).min (hsn.mul htn) = hs.min hsn * ht.min htn := by
  refine le_antisymm (IsWF.min_le _ _ (mem_mul.2 ⟨_, hs.min_mem _, _, ht.min_mem _, rfl⟩)) ?_
  rw [IsWF.le_min_iff]
  rintro _ ⟨x, hx, y, hy, rfl⟩
  exact mul_le_mul' (hs.min_le _ hx) (ht.min_le _ hy)

end Set

namespace Finset

open Pointwise

variable {α : Type*}
variable [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α]
  {s t : Set α} (hs : s.IsPWO) (ht : t.IsPWO) (a : α)

/-- `Finset.mulAntidiagonal hs ht a` is the set of all pairs of an element in `s` and an
element in `t` that multiply to `a`, but its construction requires proofs that `s` and `t` are
well-ordered. -/
@[to_additive "`Finset.addAntidiagonal hs ht a` is the set of all pairs of an element in
`s` and an element in `t` that add to `a`, but its construction requires proofs that `s` and `t` are
well-ordered."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983032590eeaa27ab3193ba11f89475d1c82766b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
