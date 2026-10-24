# mulLeftMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c671a788a2586175948da1dd7b83c4a95398363418d291d8c0d2aa5172aa29a",
  "kind": "instance",
  "lexical_name": "mulLeftMono",
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
  "slug": "mulleftmono--b77d1c889dcb95d2f4a9185f",
  "source": {
    "blob": "8b0cfbf15f80a8b70753fc42e9ba78bbba28795f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 32,
    "path": "GRWTSK/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b77d1c889dcb95d2f4a9185f3403e7660d9c98c064af98784ee5f700a0e3d05c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c671a788a2586175948da1dd7b83c4a95398363418d291d8c0d2aa5172aa29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulLeftMono [LE α] [Mul α] [c : MulLeftMono α] : MulLeftMono αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b0cfbf15f80a8b70753fc42e9ba78bbba28795f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
