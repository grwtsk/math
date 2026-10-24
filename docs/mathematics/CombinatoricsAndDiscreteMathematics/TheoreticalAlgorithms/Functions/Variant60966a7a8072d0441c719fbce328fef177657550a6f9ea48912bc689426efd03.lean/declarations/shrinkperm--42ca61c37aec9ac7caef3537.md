# shrinkPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:536e2eb15f2936bf54f7e6bc89fa4ae6a93440c2ac41981ccbfc4399d151b7d5",
  "kind": "def",
  "lexical_name": "shrinkPerm",
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
  "slug": "shrinkperm--42ca61c37aec9ac7caef3537",
  "source": {
    "blob": "36046a297dc7d6c498c9c3b851fb473f7714c06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42ca61c37aec9ac7caef35379263ba025a9b14d3ba55c1997e34257905ca72a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:536e2eb15f2936bf54f7e6bc89fa4ae6a93440c2ac41981ccbfc4399d151b7d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def shrinkPerm {α : Type} [DecidableEq α] :
    (Σ' xs ys : List α, xs ~ ys ∧ ys.Nodup) → List (Σ' xs ys : List α, xs ~ ys ∧ ys.Nodup)
  | xs => do
    let k := xs.1.length
    let n ← (sliceSizes k).force
    let i ← List.finRange <| k / n
    pure <| Perm.slice (i * n) n xs


/-- Shrink an injective function slicing a segment in the middle of the domain and removing
the corresponding elements in the codomain, hence maintaining the property that
one is a permutation of the other.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36046a297dc7d6c498c9c3b851fb473f7714c06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
