# IsPrime.isPrimary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b31eb8dcb741d59134289d3b94fb78d5718da2fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae042d635e7cb6e70132a7d8d46c18a0f42458f533119259dfcafc9c4a4d7554.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:653abb12-8265-4c43-0ca9-129f72bf25ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:714745b4-6c30-2b49-f080-774bd485718b",
  "kind": "theorem",
  "lexical_name": "IsPrime.isPrimary",
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
  "slug": "isprime-isprimary--010a869eb6984c682ab52830",
  "source": {
    "blob": "b31eb8dcb741d59134289d3b94fb78d5718da2fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 44,
    "path": "GRWTSK/Algebra/IsPrimary/Variantae042d635e7cb6e70132a7d8d46c18a0f42458f533119259dfcafc9c4a4d7554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:010a869eb6984c682ab52830655d7b7fc09b8285bd2e6903d07ed50aac2d40ba",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrimary/Variantae042d635e7cb6e70132a7d8d46c18a0f42458f533119259dfcafc9c4a4d7554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:714745b4-6c30-2b49-f080-774bd485718b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrime.isPrimary {I : Ideal R} (hi : IsPrime I) : I.IsPrimary :=
  isPrimary_iff.mpr
  ⟨hi.1, fun {_ _} hxy => (hi.mem_or_mem hxy).imp id fun hyi => le_radical hyi⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrimary/Variantae042d635e7cb6e70132a7d8d46c18a0f42458f533119259dfcafc9c4a4d7554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrimary/Variantae042d635e7cb6e70132a7d8d46c18a0f42458f533119259dfcafc9c4a4d7554.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b31eb8dcb741d59134289d3b94fb78d5718da2fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
