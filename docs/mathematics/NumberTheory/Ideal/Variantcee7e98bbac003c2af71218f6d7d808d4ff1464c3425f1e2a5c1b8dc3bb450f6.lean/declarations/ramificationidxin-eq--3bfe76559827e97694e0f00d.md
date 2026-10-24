# ramificationIdxIn_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07ed121f-ce29-a3b9-2515-e1d492cc2772",
  "kind": "theorem",
  "lexical_name": "ramificationIdxIn_eq",
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
  "slug": "ramificationidxin-eq--3bfe76559827e97694e0f00d",
  "source": {
    "blob": "1a7f19b849fdbfd6c34175328163d2742bd6a5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 420,
    "path": "GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bfe76559827e97694e0f00dac9a936d3124a1bad992574426fb1fad2f6a89b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07ed121f-ce29-a3b9-2515-e1d492cc2772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdxIn_eq (hn : n = p ^ (k + 1) * m) (hm : ¬ p ∣ m) :
    𝒑.ramificationIdxIn (𝓞 K) = p ^ k * (p - 1) :=
  (inertiaDegIn_ramificationIdxIn_aux n K hn hm).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a7f19b849fdbfd6c34175328163d2742bd6a5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
