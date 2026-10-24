# heckeCosets_nodup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1a5264dc10bfb2ca49e76a6640fc98e32455a5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b0a33b2-adc9-1038-413e-af126cbe786d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13c44e9b-5c0f-67e8-0bce-1e2016e05a61",
  "kind": "theorem",
  "lexical_name": "heckeCosets_nodup",
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
  "slug": "heckecosets-nodup--d75f1823e50c67c7c2487ec3",
  "source": {
    "blob": "a1a5264dc10bfb2ca49e76a6640fc98e32455a5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d75f1823e50c67c7c2487ec31ba6b177b261aebbe81b5359a79c35a6afa19e46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13c44e9b-5c0f-67e8-0bce-1e2016e05a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heckeCosets_nodup (n : Nat) :
    (heckeCosets n).Nodup := by
  rw [heckeCosets, List.nodup_flatMap]
  constructor
  · intro d hd
    exact List.nodup_range.map (by
      intro b1 b2 heq
      exact congrArg HeckeCosetV1.b heq)
  · have hdivisors : (positiveDivisorsAscending n).Nodup := by
      exact List.Nodup.filter _ List.nodup_range
    have hpairwise :
        (positiveDivisorsAscending n).Pairwise (fun d1 d2 ↦ d1 ≠ d2) :=
      List.nodup_iff_pairwise_ne.mp hdivisors
    apply hpairwise.imp
    intro d1 d2 hne
    apply List.disjoint_left.mpr
    intro coset hc1 hc2
    rcases List.mem_map.mp hc1 with ⟨b1, hb1, heq1⟩
    rcases List.mem_map.mp hc2 with ⟨b2, hb2, heq2⟩
    have hdEq : d1 = d2 := by
      have hcoset : makeHeckeCosetV1 n d1 b1 =
          makeHeckeCosetV1 n d2 b2 := heq1.trans heq2.symm
      exact congrArg HeckeCosetV1.d hcoset
    exact hne hdEq

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a5264dc10bfb2ca49e76a6640fc98e32455a5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
