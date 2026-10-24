# zipWithAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6a52003c377a4cd38d255b9a6d5469a1f38cf6a30e8ec3e226e7a979ff42628",
  "kind": "def",
  "lexical_name": "zipWithAll",
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
  "slug": "zipwithall--c4d5421f451eaaf1c492f8a3",
  "source": {
    "blob": "7eed7c0f2fb9fae918ce7b1d867ae342e5c6082c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2048,
    "line": 2033,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4d5421f451eaaf1c492f8a3625dddb557c792b30d847745fdf2bba9a56031b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6a52003c377a4cd38d255b9a6d5469a1f38cf6a30e8ec3e226e7a979ff42628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2033–2048.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zipWithAll (f : Option α → Option β → γ) (as : Array α) (bs : Array β) : Array γ :=
  go as bs 0 #[]
where go (as : Array α) (bs : Array β) (i : Nat) (cs : Array γ) :=
  if i < max as.size bs.size then
    let a := as[i]?
    let b := bs[i]?
    go as bs (i+1) (cs.push (f a b))
  else
    cs
  termination_by max as.size bs.size - i
  decreasing_by simp_wf; decreasing_trivial_pre_omega

/--
Applies a monadic function to the corresponding elements of two arrays, left-to-right, stopping at
the end of the shorter array. `zipWithM f as bs` is equivalent to `mapM id (zipWith f as bs)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean#L2033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eed7c0f2fb9fae918ce7b1d867ae342e5c6082c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
