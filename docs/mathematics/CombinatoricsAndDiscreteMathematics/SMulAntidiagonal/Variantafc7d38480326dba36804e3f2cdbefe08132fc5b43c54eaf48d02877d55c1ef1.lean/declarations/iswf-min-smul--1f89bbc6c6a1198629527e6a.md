# IsWF.min_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a74da96-beb0-c311-26b0-9572c569c261",
  "kind": "theorem",
  "lexical_name": "IsWF.min_smul",
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
  "slug": "iswf-min-smul--1f89bbc6c6a1198629527e6a",
  "source": {
    "blob": "01719cc7af7298b6cd3912cd1d36fdf0848404d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f89bbc6c6a1198629527e6af10d105e20982c8f86a63dd714f7e25c5e5aae7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a74da96-beb0-c311-26b0-9572c569c261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWF.min_smul [LinearOrder G] [LinearOrder P] [SMul G P] [IsOrderedSMul G P]
    {s : Set G} {t : Set P} (hs : s.IsWF) (ht : t.IsWF) (hsn : s.Nonempty) (htn : t.Nonempty) :
    (hs.smul ht).min (hsn.smul htn) = hs.min hsn • ht.min htn := by
  refine le_antisymm (IsWF.min_le _ _ (mem_smul.2 ⟨_, hs.min_mem _, _, ht.min_mem _, rfl⟩)) ?_
  rw [IsWF.le_min_iff]
  rintro _ ⟨x, hx, y, hy, rfl⟩
  exact IsOrderedSMul.smul_le_smul (hs.min_le _ hx) (ht.min_le _ hy)

end Set

namespace Finset

section

open Set

variable [SMul G P]

/-- `Finset.SMulAntidiagonal hs ht a` is the set of all pairs of an element in `s` and an
element in `t` whose scalar multiplication yields `a`, but its construction requires a proof that
the set-theoretic antidiagonal is finite. -/
@[to_additive /-- `Finset.VAddAntidiagonal hs ht a` is the set of all pairs of an element in `s`
and an element in `t` whose vector addition yields `a`, but its construction requires proofs that
`s` and `t` are well-ordered. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01719cc7af7298b6cd3912cd1d36fdf0848404d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
