# HasEval.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "592dfde852f57989d1be0eb108ea0cbaa9abaa95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0858dcf-fd8e-d7cd-0d83-c811f555b812",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9afd4a29-67be-d57b-bf13-803e3a18234f",
  "kind": "theorem",
  "lexical_name": "HasEval.mono",
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
  "slug": "haseval-mono--136dcf81ff1551f0bf289b1f",
  "source": {
    "blob": "592dfde852f57989d1be0eb108ea0cbaa9abaa95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:136dcf81ff1551f0bf289b1f2d309121deb3cd64b843928243c48688b7aea0eb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9afd4a29-67be-d57b-bf13-803e3a18234f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasEval.mono {S : Type*} [CommRing S] {a : S}
    {t u : TopologicalSpace S} (h : t ≤ u) (ha : @HasEval _ _ t a) :
    @HasEval _ _ u a := by
  simp only [hasEval_iff] at ha ⊢
  exact ha.mono h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `592dfde852f57989d1be0eb108ea0cbaa9abaa95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
