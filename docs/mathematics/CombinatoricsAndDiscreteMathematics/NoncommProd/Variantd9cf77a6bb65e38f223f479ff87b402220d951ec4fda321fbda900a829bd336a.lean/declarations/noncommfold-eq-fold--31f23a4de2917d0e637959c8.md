# noncommFold_eq_fold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74636b4f-2da2-5635-26fd-411aa6dcdcba",
  "kind": "theorem",
  "lexical_name": "noncommFold_eq_fold",
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
  "slug": "noncommfold-eq-fold--31f23a4de2917d0e637959c8",
  "source": {
    "blob": "833e40529ff0486c5673892e38995f97d2411d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f23a4de2917d0e637959c8526ba531c160cf46614f9a1d586b008737c9449f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74636b4f-2da2-5635-26fd-411aa6dcdcba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommFold_eq_fold (s : Multiset α) [Std.Commutative op] (a : α) :
    noncommFold op s (fun x _ y _ _ => Std.Commutative.comm x y) a = fold op a s := by
  induction s using Quotient.inductionOn
  simp

end assoc

variable [Monoid α] [Monoid β]

/-- Product of a `s : Multiset α` with `[Monoid α]`, given a proof that `*` commutes
on all elements `x ∈ s`. -/
@[to_additive
      "Sum of a `s : Multiset α` with `[AddMonoid α]`, given a proof that `+` commutes
      on all elements `x ∈ s`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `833e40529ff0486c5673892e38995f97d2411d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
