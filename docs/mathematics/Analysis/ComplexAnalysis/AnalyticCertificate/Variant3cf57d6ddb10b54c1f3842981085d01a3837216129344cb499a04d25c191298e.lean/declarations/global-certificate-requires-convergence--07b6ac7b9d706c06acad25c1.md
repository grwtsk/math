# global_certificate_requires_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9701dd440433145e254fbfcb8bf98f8ce13a10aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c1fbd84-ca2b-481d-43c4-4ffffdf02272",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a4256dd-1869-6861-2b0e-361399318986",
  "kind": "theorem",
  "lexical_name": "global_certificate_requires_convergence",
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
  "slug": "global-certificate-requires-convergence--07b6ac7b9d706c06acad25c1",
  "source": {
    "blob": "9701dd440433145e254fbfcb8bf98f8ce13a10aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 204,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b6ac7b9d706c06acad25c12f841fa326fc2df9140d97b2af2ac5eb4f35cd7e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a4256dd-1869-6861-2b0e-361399318986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_certificate_requires_convergence
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) (i : I) :
    P.convergesOn (C.U i) (C.phi i) :=
  (global_certificate_requires_all_local_clauses h i).2.2.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9701dd440433145e254fbfcb8bf98f8ce13a10aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
