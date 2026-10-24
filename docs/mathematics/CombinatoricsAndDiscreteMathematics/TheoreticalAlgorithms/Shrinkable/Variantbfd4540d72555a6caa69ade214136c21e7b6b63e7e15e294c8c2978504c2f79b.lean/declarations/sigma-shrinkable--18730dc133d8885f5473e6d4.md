# Sigma.shrinkable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab573d6d348782f7beb0ea08f440d439b63079b267014f76316d602fa0206799",
  "kind": "instance",
  "lexical_name": "Sigma.shrinkable",
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
  "slug": "sigma-shrinkable--18730dc133d8885f5473e6d4",
  "source": {
    "blob": "dfa7b335187741c8311d0e5299c7c9d2b7323707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shrinkable/Variantbfd4540d72555a6caa69ade214136c21e7b6b63e7e15e294c8c2978504c2f79b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18730dc133d8885f5473e6d40ace0fc1131c74f73972b964dffcb6d808d9156c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shrinkable/Variantbfd4540d72555a6caa69ade214136c21e7b6b63e7e15e294c8c2978504c2f79b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab573d6d348782f7beb0ea08f440d439b63079b267014f76316d602fa0206799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance Sigma.shrinkable [shrA : Shrinkable α] [shrB : Shrinkable β] :
    Shrinkable ((_ : α) × β) where
  shrink := fun ⟨fst,snd⟩ =>
    let shrink1 := shrA.shrink fst |>.map fun x => ⟨x, snd⟩
    let shrink2 := shrB.shrink snd |>.map fun x => ⟨fst, x⟩
    shrink1 ++ shrink2

open Shrinkable

/-- Shrink a list of a shrinkable type, either by discarding an element or shrinking an element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shrinkable/Variantbfd4540d72555a6caa69ade214136c21e7b6b63e7e15e294c8c2978504c2f79b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shrinkable/Variantbfd4540d72555a6caa69ade214136c21e7b6b63e7e15e294c8c2978504c2f79b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa7b335187741c8311d0e5299c7c9d2b7323707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
