# Pi.conditionallyCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:515edbbd165eba77f3c2c040fc476d0a87bdcdeaeee4aa91c56ff73ce543f068",
  "kind": "instance",
  "lexical_name": "Pi.conditionallyCompleteLattice",
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
  "slug": "pi-conditionallycompletelattice--82eb78659bc710b2b5bc7fe3",
  "source": {
    "blob": "4532a24b4e6a5d856c0ab223bbef2184588defbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82eb78659bc710b2b5bc7fe3f33b65ab1f462e41f03e1d25a235015c8d262860",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:515edbbd165eba77f3c2c040fc476d0a87bdcdeaeee4aa91c56ff73ce543f068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.conditionallyCompleteLattice {ι : Type*} {α : ι → Type*}
    [∀ i, ConditionallyCompleteLattice (α i)] : ConditionallyCompleteLattice (∀ i, α i) where
  isLUB_csSup _ hn hb := isLUB_pi.mpr fun _ ↦ by
    rw [sSup_apply_eq_sSup_image]
    exact isLUB_csSup (image_nonempty.mpr hn) ((monotone_eval _).map_bddAbove hb)
  isGLB_csInf _ hn hb := isGLB_pi.mpr fun _ ↦ by
    rw [sInf_apply_eq_sInf_image]
    exact isGLB_csInf (image_nonempty.mpr hn) ((monotone_eval _).map_bddBelow hb)

section ConditionallyCompleteLinearOrder

variable [ConditionallyCompleteLinearOrder α] {f : ι → α} {s : Set α} {a b : α}

/-- When `b < sSup s`, there is an element `a` in `s` with `b < a`, if `s` is nonempty and the order
is a linear order. -/
@[to_dual exists_lt_of_csInf_lt
/-- When `sInf s < b`, there is an element `a` in `s` with `a < b`, if `s` is nonempty and the order
is a linear order. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4532a24b4e6a5d856c0ab223bbef2184588defbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
