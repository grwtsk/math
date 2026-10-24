# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b96107fbb935d1d366b3fff1b0382e5fe5862744d11918143f519a544312d4ba",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3dba92edb578f336dbcb8634",
  "source": {
    "blob": "771d9f10602096033aaea54e48b2e114c0a6007c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 327,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3dba92edb578f336dbcb86347095c492840b78142fb6e669242b6ee509ef70f3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b96107fbb935d1d366b3fff1b0382e5fe5862744d11918143f519a544312d4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [LocallyCompactSpace α] [Mul β] [ContinuousMul β] : ContinuousMul C(α, β) :=
  ⟨by
    refine' continuous_of_continuous_uncurry _ _
    have h1 : Continuous fun x : (C(α, β) × C(α, β)) × α => x.fst.fst x.snd :=
      continuous_eval'.comp (continuous_fst.prod_map continuous_id)
    have h2 : Continuous fun x : (C(α, β) × C(α, β)) × α => x.fst.snd x.snd :=
      continuous_eval'.comp (continuous_snd.prod_map continuous_id)
    exact h1.mul h2⟩

/-- Coercion to a function as a `MonoidHom`. Similar to `MonoidHom.coeFn`. -/
@[to_additive (attr := simps)
  "Coercion to a function as an `AddMonoidHom`. Similar to `AddMonoidHom.coeFn`." ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771d9f10602096033aaea54e48b2e114c0a6007c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
