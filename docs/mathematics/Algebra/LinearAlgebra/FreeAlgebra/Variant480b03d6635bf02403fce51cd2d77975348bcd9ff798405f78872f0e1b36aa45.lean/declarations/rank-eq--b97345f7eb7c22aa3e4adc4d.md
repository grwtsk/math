# rank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c19dc239532c6a70aa8d6cc955b81ea05bd1f07b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f5a12d7-4212-656a-b42c-c375ec0c70aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4d677ae-4277-ae43-0637-ff1e0ad6acbe",
  "kind": "theorem",
  "lexical_name": "rank_eq",
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
  "slug": "rank-eq--b97345f7eb7c22aa3e4adc4d",
  "source": {
    "blob": "c19dc239532c6a70aa8d6cc955b81ea05bd1f07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97345f7eb7c22aa3e4adc4df341da783b29c9e06d656d19b009b022aeabb0e4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4d677ae-4277-ae43-0637-ff1e0ad6acbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_eq [CommRing R] [Nontrivial R] :
    Module.rank R (FreeAlgebra R X) = Cardinal.lift.{u} (Cardinal.mk (List X)) := by
  rw [← (Basis.mk_eq_rank'.{_,_,_,u} (basisFreeMonoid R X)).trans (Cardinal.lift_id _),
    Cardinal.lift_umax.{v, u}, FreeMonoid]

end FreeAlgebra

open Cardinal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c19dc239532c6a70aa8d6cc955b81ea05bd1f07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
