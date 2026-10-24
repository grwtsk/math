# zipWithLeft'_eq_zipWithLeft'TR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd68b32d-d05b-45c5-d10b-27732c63806e",
  "kind": "theorem",
  "lexical_name": "zipWithLeft'_eq_zipWithLeft'TR",
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
  "slug": "zipwithleft-eq-zipwithleft-tr--0b4517ba2f984429a92eedc0",
  "source": {
    "blob": "17bb198c53047304d48fcfc05b1a538c7027298d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1343,
    "line": 1325,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b4517ba2f984429a92eedc045798bf125da64736591cb9473319725b3146523",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd68b32d-d05b-45c5-d10b-27732c63806e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1325–1343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[csimp] theorem zipWithLeft'_eq_zipWithLeft'TR : @zipWithLeft' = @zipWithLeft'TR := by
  funext α β γ f as bs; simp [zipWithLeft'TR]
  let rec go (acc) : ∀ as bs, zipWithLeft'TR.go f as bs acc =
      let (l, r) := as.zipWithLeft' f bs; (acc.toList ++ l, r)
  | [], bs => by simp [zipWithLeft'TR.go]
  | _::_, [] => by simp [zipWithLeft'TR.go, Array.foldl_data_eq_map]
  | a::as, b::bs => by simp [zipWithLeft'TR.go, go _ as bs]
  simp [zipWithLeft'TR, go]

/--
Right-biased version of `List.zipWith`. `zipWithRight' f as bs` applies `f` to each
pair of elements `aᵢ ∈ as` and `bᵢ ∈ bs`. If `as` is shorter than `bs`, `f` is
applied to `none` for the remaining `bᵢ`. Returns the results of the `f`
applications and the remaining `as`.
```
zipWithRight' prod.mk [1] ['a', 'b'] = ([(some 1, 'a'), (none, 'b')], [])
zipWithRight' prod.mk [1, 2] ['a'] = ([(some 1, 'a')], [2])
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean#L1325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17bb198c53047304d48fcfc05b1a538c7027298d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
