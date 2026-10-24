# _root_.Polynomial.toLaurent_C_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "118dc1660fcf64eeb5c5dbb5bdf9a1148ed481f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27888f4196364228069542c5de87a2f0774d10031a76ac88f5d65353e10a2046.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee009ad8-99a3-bc7e-671c-a057bed6a552",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2110bf6-db64-3a11-e6a7-cdd9cc5843a1",
  "kind": "theorem",
  "lexical_name": "_root_.Polynomial.toLaurent_C_mul_eq",
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
  "slug": "root-polynomial-tolaurent-c-mul-eq--4df429f0564f1f441ac808a5",
  "source": {
    "blob": "118dc1660fcf64eeb5c5dbb5bdf9a1148ed481f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 207,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant27888f4196364228069542c5de87a2f0774d10031a76ac88f5d65353e10a2046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4df429f0564f1f441ac808a54114b620446d00f421c590eadf157e8e720e20f4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Laurent/Variant27888f4196364228069542c5de87a2f0774d10031a76ac88f5d65353e10a2046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2110bf6-db64-3a11-e6a7-cdd9cc5843a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Polynomial.toLaurent_C_mul_eq (r : R) (f : R[X]) :
    toLaurent (Polynomial.C r * f) = C r * toLaurent f := by
  simp only [map_mul, Polynomial.toLaurent_C]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Laurent/Variant27888f4196364228069542c5de87a2f0774d10031a76ac88f5d65353e10a2046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant27888f4196364228069542c5de87a2f0774d10031a76ac88f5d65353e10a2046.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `118dc1660fcf64eeb5c5dbb5bdf9a1148ed481f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
