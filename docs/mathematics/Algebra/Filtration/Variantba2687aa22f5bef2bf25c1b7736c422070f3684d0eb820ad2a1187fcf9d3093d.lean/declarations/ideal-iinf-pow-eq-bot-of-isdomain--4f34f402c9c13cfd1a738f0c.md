# Ideal.iInf_pow_eq_bot_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c1bcfa0-da95-fdc1-c048-ccf98a29d0f3",
  "kind": "theorem",
  "lexical_name": "Ideal.iInf_pow_eq_bot_of_isDomain",
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
  "slug": "ideal-iinf-pow-eq-bot-of-isdomain--4f34f402c9c13cfd1a738f0c",
  "source": {
    "blob": "73a2acb2284415ab63ac77df256e277bcca3d8c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 477,
    "path": "GRWTSK/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f34f402c9c13cfd1a738f0cdf0e6d4a948ab7f379b5f6e3047d26dbeb7718e0",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c1bcfa0-da95-fdc1-c048-ccf98a29d0f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.iInf_pow_eq_bot_of_isDomain [IsNoetherianRing R] [IsDomain R] (h : I ≠ ⊤) :
    ⨅ i : ℕ, I ^ i = ⊥ := by
  convert I.iInf_pow_smul_eq_bot_of_noZeroSMulDivisors (M := R) h
  simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73a2acb2284415ab63ac77df256e277bcca3d8c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
