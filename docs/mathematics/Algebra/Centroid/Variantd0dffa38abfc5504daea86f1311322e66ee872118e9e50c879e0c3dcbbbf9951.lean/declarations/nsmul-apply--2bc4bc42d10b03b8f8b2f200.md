# nsmul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0514fb9b-f34b-57e6-c172-e58eb2417fed",
  "kind": "theorem",
  "lexical_name": "nsmul_apply",
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
  "slug": "nsmul-apply--2bc4bc42d10b03b8f8b2f200",
  "source": {
    "blob": "7ad17068d19af5520603dd1a3d5d77974f1a65e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 343,
    "path": "GRWTSK/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bc4bc42d10b03b8f8b2f20060e94da92cf8b1c034d144909d2dab829d17ec6f",
  "verification": {
    "reference": "docs/verification/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0514fb9b-f34b-57e6-c172-e58eb2417fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nsmul_apply (f : CentroidHom α) (n : ℕ) (a : α) : (n • f) a = n • f a :=
  rfl
#align centroid_hom.nsmul_apply CentroidHom.nsmul_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad17068d19af5520603dd1a3d5d77974f1a65e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
