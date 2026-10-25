# HolderConjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f92b18d235f2579b06433541f635a90ea70a09892af21a1271dd751271281c4c",
  "kind": "abbrev",
  "lexical_name": "HolderConjugate",
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
  "slug": "holderconjugate--25c77e2c39797a5d7382a75f",
  "source": {
    "blob": "4aa41cbb45aba249c0ad570ddba9ac8da6a50574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25c77e2c39797a5d7382a75fde6de4af2573fd74b41e495e653df114e11ed20e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f92b18d235f2579b06433541f635a90ea70a09892af21a1271dd751271281c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HolderConjugate (p q : ℝ) := HolderTriple p q 1

/-- The conjugate exponent of `p` is `q = p / (p-1)`, so that `p⁻¹ + q⁻¹ = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa41cbb45aba249c0ad570ddba9ac8da6a50574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
