# range_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0520fc09-8f1e-233f-a8cc-bb6f232b938b",
  "kind": "theorem",
  "lexical_name": "range_snd",
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
  "slug": "range-snd--aa3190b79eb077614ecd29d6",
  "source": {
    "blob": "cf29df66698b4479158a7e4b8fbb8602c6d60df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 973,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa3190b79eb077614ecd29d61f491350ae986be8aa46ffc4386a6cab2a5c186f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0520fc09-8f1e-233f-a8cc-bb6f232b938b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 973–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_snd : NonUnitalRingHom.srange (snd R S) = ⊤ :=
  NonUnitalRingHom.srange_top_of_surjective (snd R S) <| Prod.snd_surjective
#align non_unital_subsemiring.range_snd NonUnitalSubsemiring.range_snd

end NonUnitalSubsemiring

namespace RingEquiv

open NonUnitalRingHom NonUnitalSubsemiringClass

variable {s t : NonUnitalSubsemiring R}

variable {F : Type*} [NonUnitalRingHomClass F R S]

/-- Makes the identity isomorphism from a proof two non-unital subsemirings of a multiplicative
monoid are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean#L973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf29df66698b4479158a7e4b8fbb8602c6d60df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
