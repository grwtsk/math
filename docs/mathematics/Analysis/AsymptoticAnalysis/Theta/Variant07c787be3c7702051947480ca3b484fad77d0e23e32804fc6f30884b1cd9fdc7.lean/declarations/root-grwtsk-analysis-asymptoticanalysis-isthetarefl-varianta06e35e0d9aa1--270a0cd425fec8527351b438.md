# _root_.GRWTSK.Analysis.AsymptoticAnalysis.IsThetaRefl.Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.Filter.EventuallyEq.isTheta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad969d55-a130-f1d7-9b95-2bceb9df515a",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsThetaRefl.Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.Filter.EventuallyEq.isTheta",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-isthetarefl-varianta06e35e0d9aa1--270a0cd425fec8527351b438",
  "source": {
    "blob": "e89c35a8802b91dc9f3598fbd3a3d7e1630ff725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 121,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:270a0cd425fec8527351b438889f01df572cbe8596c970146b4e3e5ee04d6738",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad969d55-a130-f1d7-9b95-2bceb9df515a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.AsymptoticAnalysis.IsThetaRefl.Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.Filter.EventuallyEq.isTheta {f g : α → E} (h : f =ᶠ[l] g) : f =Θ[l] g :=
  h.trans_isTheta isTheta_rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e89c35a8802b91dc9f3598fbd3a3d7e1630ff725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
