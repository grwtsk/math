# IntegralLocalSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eda68bba7f5909b6bf9ef28042fc726fa3951770e3bd133c2798220e82507274",
  "kind": "structure",
  "lexical_name": "IntegralLocalSystem",
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
  "slug": "integrallocalsystem--de60cb3bcc7d8ac2b897ec96",
  "source": {
    "blob": "eed63091d634094d96d67b55c226c7c68427884d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 23,
    "path": "GRWTSK/Algebra/GroupTheory/LocalSystem/Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de60cb3bcc7d8ac2b897ec962a3db834d57f906d8fe49f18bc0b23019e853e7e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/LocalSystem/Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eda68bba7f5909b6bf9ef28042fc726fa3951770e3bd133c2798220e82507274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntegralLocalSystem
    (Loop : Type*) [Group Loop] (rank : Nat) where
  integralMonodromy :
    Loop →* (IntegralFiber rank ≃ₗ[ℤ] IntegralFiber rank)
  realMonodromy :
    Loop →* (RealFiber rank ≃ₗ[ℝ] RealFiber rank)
  scalarExtensionCompatible :
    ∀ loop vector,
      realMonodromy loop (integralFiberToReal vector) =
        integralFiberToReal (integralMonodromy loop vector)
  monodromyDigest : Digest
  localSystemCertificate : ObjectAddress

end Mathematics.Homology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/LocalSystem/Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/LocalSystem/Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed63091d634094d96d67b55c226c7c68427884d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
