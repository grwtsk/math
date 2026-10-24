# PiInfPrincipalPi.neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc9de5d5143fea144db181d6804e42b0a103e201ee0fec31472030232d9374c9",
  "kind": "instance",
  "lexical_name": "PiInfPrincipalPi.neBot",
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
  "slug": "piinfprincipalpi-nebot--ff7d314eb661ec156f343705",
  "source": {
    "blob": "52ad9b936e2f72838e0aaf51c79725941fe8b9bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff7d314eb661ec156f343705f4cbd6f1282ce0a6ed7376fd2157cea745fb1a54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc9de5d5143fea144db181d6804e42b0a103e201ee0fec31472030232d9374c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance PiInfPrincipalPi.neBot [h : ∀ i, NeBot (f i ⊓ 𝓟 (s i))] {I : Set ι} :
    NeBot (pi f ⊓ 𝓟 (I.pi s)) :=
  (pi_inf_principal_univ_pi_neBot.2 ‹_›).mono <|
    inf_le_inf_left _ <| principal_mono.2 fun _ hx i _ => hx i trivial

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ad9b936e2f72838e0aaf51c79725941fe8b9bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
