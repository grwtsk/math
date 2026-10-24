# Array.MergeSort.Internal.merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac51a844ec642437b48d43ca527f08c4c3c598a5eaa010c420ce40291e1ef93d",
  "kind": "def",
  "lexical_name": "Array.MergeSort.Internal.merge",
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
  "slug": "array-mergesort-internal-merge--f6fa8eb4949cb9a467408f72",
  "source": {
    "blob": "4d50707721e967f60209831977ee23118e9b8aa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0f7fd11085d02b59065916e05f38013968dd0fe1adc1d60090e5c9f44f104682.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6fa8eb4949cb9a467408f720eb1f26fb382f1e3881d6eced9d75b9b2c361927",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0f7fd11085d02b59065916e05f38013968dd0fe1adc1d60090e5c9f44f104682.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac51a844ec642437b48d43ca527f08c4c3c598a5eaa010c420ce40291e1ef93d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def Array.MergeSort.Internal.merge (xs ys : Array α) (le : α → α → Bool := by exact (· ≤ ·)) :
    Array α :=
  if hxs : 0 < xs.size then
    if hys : 0 < ys.size then
      go xs[*...*] ys[*...*] (by simp only [Array.size_mkSlice_rii]; omega) (by simp only [Array.size_mkSlice_rii]; omega) (Array.emptyWithCapacity (xs.size + ys.size))
    else
      xs
  else
    ys
where
  go (xs ys : Subarray α) (hxs : 0 < xs.size) (hys : 0 < ys.size) (acc : Array α) : Array α :=
    let x := xs[0]
    let y := ys[0]
    if le x y then
      if hi : 1 < xs.size then
        go (xs.drop 1) ys (by simp only [Subarray.size_drop]; omega) hys (acc.push x)
      else
        ys.foldl (init := acc.push x) (fun acc y => acc.push y)
    else
      if hj : 1 < ys.size then
        go xs (ys.drop 1) hxs (by simp only [Subarray.size_drop]; omega) (acc.push y)
      else
        xs.foldl (init := acc.push y) (fun acc x => acc.push x)
  termination_by xs.size + ys.size

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0f7fd11085d02b59065916e05f38013968dd0fe1adc1d60090e5c9f44f104682.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0f7fd11085d02b59065916e05f38013968dd0fe1adc1d60090e5c9f44f104682.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d50707721e967f60209831977ee23118e9b8aa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
