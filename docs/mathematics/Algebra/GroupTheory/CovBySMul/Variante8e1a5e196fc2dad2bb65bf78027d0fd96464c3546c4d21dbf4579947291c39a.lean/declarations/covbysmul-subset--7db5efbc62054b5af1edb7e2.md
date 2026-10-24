# CovBySMul.subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2646ff8-25a4-3856-5d64-c3a58225d721",
  "kind": "lemma",
  "lexical_name": "CovBySMul.subset",
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
  "slug": "covbysmul-subset--7db5efbc62054b5af1edb7e2",
  "source": {
    "blob": "e9391e8aa9925da17c0daac3ae848622a0a61ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db5efbc62054b5af1edb7e205abe9153d811dff25347322aa97bc635dd06cdf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2646ff8-25a4-3856-5d64-c3a58225d721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CovBySMul.subset (hA : A₁ ⊆ A₂) (hB : B₁ ⊆ B₂) (hAB : CovBySMul M K A₂ B₁) :
    CovBySMul M K A₁ B₂ := (hAB.subset_left hA).subset_right hB
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9391e8aa9925da17c0daac3ae848622a0a61ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
