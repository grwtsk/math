# lfp_le_of_le_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05953e06-31b7-9cbd-6369-7c670d0764a7",
  "kind": "theorem",
  "lexical_name": "lfp_le_of_le_monotone",
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
  "slug": "lfp-le-of-le-monotone--297ed002af1cefe81627c119",
  "source": {
    "blob": "a51ada2ab1a368f9427eff16bcb59d49d69a6584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 369,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:297ed002af1cefe81627c119d0e517c4553a5d0cc81dbd419792a59d7bb97eaf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05953e06-31b7-9cbd-6369-7c670d0764a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lfp_le_of_le_monotone (f : α → α) {hm : monotone f} (x : α):
  f x ⊑ x → lfp_monotone f hm ⊑ x := by
    unfold lfp_monotone
    apply lfp_le_of_le

end lattice_fix

section fix

open PartialOrder CCPO

variable {α  : Sort u} [CCPO α]

variable {c : α → Prop} (hchain : chain c)

/--
The transfinite iteration of a function `f` is a set that is `⊥ ` and is closed under application
of `f` and `csup`.

This is intended to be used in the construction of `partial_fixpoint`, and not meant to be used otherwise.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ada2ab1a368f9427eff16bcb59d49d69a6584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
