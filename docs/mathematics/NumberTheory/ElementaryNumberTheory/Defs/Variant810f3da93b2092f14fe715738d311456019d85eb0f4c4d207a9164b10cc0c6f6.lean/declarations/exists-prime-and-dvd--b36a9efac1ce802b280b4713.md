# exists_prime_and_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c30ce1c-face-af22-68ce-89c6e8b64439",
  "kind": "theorem",
  "lexical_name": "exists_prime_and_dvd",
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
  "slug": "exists-prime-and-dvd--b36a9efac1ce802b280b4713",
  "source": {
    "blob": "3af0f375b00d6a84f3c71f761520a32a7239a928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 410,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b36a9efac1ce802b280b471376a7d3d428cf07eb31d4e1dea36218aafd80fbb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c30ce1c-face-af22-68ce-89c6e8b64439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_prime_and_dvd {n : ℕ} (hn : n ≠ 1) : ∃ p, Prime p ∧ p ∣ n :=
  ⟨minFac n, minFac_prime hn, minFac_dvd _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af0f375b00d6a84f3c71f761520a32a7239a928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
