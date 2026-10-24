# global_certificate_requires_identification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce0ac00b-0f08-ee45-9849-7ab0571d1b63",
  "kind": "theorem",
  "lexical_name": "global_certificate_requires_identification",
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
  "slug": "global-certificate-requires-identification--fff9665dd4033ceabab50916",
  "source": {
    "blob": "1e418f53026b4bd9bbb239099908aadd06bacff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 220,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fff9665dd4033ceabab50916b73b5c964685453e4ac4326c88d353b9667fd0bd",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce0ac00b-0f08-ee45-9849-7ab0571d1b63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_certificate_requires_identification
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) (i : I) :
    P.identifies F (C.U i) (C.phi i) :=
  (global_certificate_requires_all_local_clauses h i).2.2.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e418f53026b4bd9bbb239099908aadd06bacff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
