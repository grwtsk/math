# incoming_connecting_from_les

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "189d9844c0b3a5531319d2edbfc4c7cb0f600bb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 715,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78fa5d1a-c555-48d8-4d6b-5acda57ef0d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5806a6fb-8999-cb65-4dc6-bb90481f68da",
  "kind": "theorem",
  "lexical_name": "incoming_connecting_from_les",
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
  "slug": "incoming-connecting-from-les--b7ea81e4aca43887707d8d81",
  "source": {
    "blob": "189d9844c0b3a5531319d2edbfc4c7cb0f600bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 715,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7ea81e4aca43887707d8d8122d4d4e7f46d5deedcfc9c2b3b5477d6155b350a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5806a6fb-8999-cb65-4dc6-bb90481f68da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incoming_connecting_from_les
    (H : TraceHomologyComparison certificate) :
    H.theory.IsLongExactConnecting certificate.trace .incoming (p + 1)
      (Nat.zero_lt_succ p)
      (H.theory.connecting certificate.trace .incoming (p + 1)
        (Nat.zero_lt_succ p)) :=
  H.theory.connecting_from_les certificate.trace .incoming (p + 1)
    (Nat.zero_lt_succ p)

/-- The outgoing connecting map is explicitly certified as the trace pair's LES map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189d9844c0b3a5531319d2edbfc4c7cb0f600bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
