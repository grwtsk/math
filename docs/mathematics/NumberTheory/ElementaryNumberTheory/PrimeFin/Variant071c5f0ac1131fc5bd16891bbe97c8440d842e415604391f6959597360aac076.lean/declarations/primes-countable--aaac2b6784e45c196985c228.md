# Primes.countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f872c2158c423885458c2ea2db2a34c68022af5b1d071a50d838a8f96513ec5c",
  "kind": "instance",
  "lexical_name": "Primes.countable",
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
  "slug": "primes-countable--aaac2b6784e45c196985c228",
  "source": {
    "blob": "ab480a1ee3cb6cf79304d4c3684f56c693a79a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 36,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaac2b6784e45c196985c22803f437fec34be78a6b07f9278d61fe5fc09a18e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f872c2158c423885458c2ea2db2a34c68022af5b1d071a50d838a8f96513ec5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Primes.countable : Countable Primes := ⟨⟨coeNat.coe, coe_nat_injective⟩⟩

/-- The prime factors of a natural number as a finset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab480a1ee3cb6cf79304d4c3684f56c693a79a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
