# natDegree_radical_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd351272-cba6-895f-53da-fa7b49656e06",
  "kind": "theorem",
  "lexical_name": "natDegree_radical_le",
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
  "slug": "natdegree-radical-le--d1daad12c81ee5f8a3ffcd87",
  "source": {
    "blob": "576ed7175c256ab3d9d7749837ca563e255279a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 37,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1daad12c81ee5f8a3ffcd878f2f66ff8fdd207a6f62a0051725c1e9327d594d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd351272-cba6-895f-53da-fa7b49656e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_radical_le {a : k[X]} :
    (radical a).natDegree ≤ a.natDegree := by
  by_cases ha : a = 0
  · simp [ha]
  · exact natDegree_le_of_dvd radical_dvd_self ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `576ed7175c256ab3d9d7749837ca563e255279a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
