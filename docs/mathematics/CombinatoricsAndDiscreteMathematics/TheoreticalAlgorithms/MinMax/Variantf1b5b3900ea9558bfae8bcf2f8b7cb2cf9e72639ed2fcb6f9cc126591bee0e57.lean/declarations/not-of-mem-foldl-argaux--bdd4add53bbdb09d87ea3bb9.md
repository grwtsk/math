# not_of_mem_foldl_argAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19d06d29-da0a-8337-23b5-ddaa3df2fb38",
  "kind": "theorem",
  "lexical_name": "not_of_mem_foldl_argAux",
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
  "slug": "not-of-mem-foldl-argaux--bdd4add53bbdb09d87ea3bb9",
  "source": {
    "blob": "41d09c741673560d68b8337e3fb560ccbbadb0c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdd4add53bbdb09d87ea3bb9bb1a26b19e21a5835cbe656ecbe11c06af736b10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19d06d29-da0a-8337-23b5-ddaa3df2fb38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_of_mem_foldl_argAux (hr₀ : Std.Irrefl r) (hr₁ : IsTrans α r) :
    ∀ {a m : α} {o : Option α}, a ∈ l → m ∈ foldl (argAux r) o l → ¬r a m := by
  induction l using List.reverseRecOn with
  | nil => simp
  | append_singleton tl a ih => ?_
  intro b m o hb ho
  rw [foldl_append, foldl_cons, foldl_nil, argAux] at ho
  rcases hf : foldl (argAux r) o tl with - | c
  · rw [hf] at ho
    rw [foldl_argAux_eq_none] at hf
    simp_all [hf.1, hf.2, hr₀.irrefl _]
  rw [hf, Option.mem_def] at ho
  grind +splitIndPred

end ArgAux

section Preorder

variable [Preorder β] [DecidableLT β] {f : α → β} {l : List α} {a m : α}

/-- `argmax f l` returns `some a`, where `f a` is maximal among the elements of `l`, in the sense
that there is no `b ∈ l` with `f a < f b`. If `a`, `b` are such that `f a = f b`, it returns
whichever of `a` or `b` comes first in the list. `argmax f [] = none`. -/
@[to_dual
/-- `argmin f l` returns `some a`, where `f a` is minimal among the elements of `l`, in the sense
that there is no `b ∈ l` with `f b < f a`. If `a`, `b` are such that `f a = f b`, it returns
whichever of `a` or `b` comes first in the list. `argmin f [] = none`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d09c741673560d68b8337e3fb560ccbbadb0c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
