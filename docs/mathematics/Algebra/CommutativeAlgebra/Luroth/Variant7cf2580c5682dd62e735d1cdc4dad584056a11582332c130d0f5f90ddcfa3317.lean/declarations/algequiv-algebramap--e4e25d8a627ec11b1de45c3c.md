# algEquiv_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a11456c8-78d7-35a3-1f16-a1928a33ba8c",
  "kind": "lemma",
  "lexical_name": "algEquiv_algebraMap",
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
  "slug": "algequiv-algebramap--e4e25d8a627ec11b1de45c3c",
  "source": {
    "blob": "4567a817b4413394977204cac0a659ea01a08673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 509,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e25d8a627ec11b1de45c3cde7e4bb71a192d760f1febda1bf715a166127213",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a11456c8-78d7-35a3-1f16-a1928a33ba8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma algEquiv_algebraMap (h : E ≠ ⊥) (g : K[X]) :
    algEquiv h (algebraMap K[X] K⟮X⟯ g) = aeval (generator E) g := by
  simp [algEquiv]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4567a817b4413394977204cac0a659ea01a08673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
