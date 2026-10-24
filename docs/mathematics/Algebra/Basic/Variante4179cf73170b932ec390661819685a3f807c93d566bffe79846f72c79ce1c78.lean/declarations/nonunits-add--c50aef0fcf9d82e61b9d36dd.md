# nonunits_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0bde4ba-4bfe-b0c5-f2b3-2b01be06a6bb",
  "kind": "theorem",
  "lexical_name": "nonunits_add",
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
  "slug": "nonunits-add--c50aef0fcf9d82e61b9d36dd",
  "source": {
    "blob": "808973e98e356917bc9a60348ddb99d07f5c6704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 80,
    "path": "GRWTSK/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c50aef0fcf9d82e61b9d36dd967af3ef9d2a15b5691568659347d9ba02b14716",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0bde4ba-4bfe-b0c5-f2b3-2b01be06a6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonunits_add {a b : R} (ha : a ∈ nonunits R) (hb : b ∈ nonunits R) : a + b ∈ nonunits R :=
  fun H => not_or_intro ha hb (isUnit_or_isUnit_of_isUnit_add H)

@[deprecated (since := "2024-11-11")]
alias LocalRing.of_isUnit_or_isUnit_of_isUnit_add := IsLocalRing.of_isUnit_or_isUnit_of_isUnit_add

@[deprecated (since := "2024-11-11")]
alias LocalRing.of_nonunits_add := IsLocalRing.of_nonunits_add

@[deprecated (since := "2024-11-11")]
alias LocalRing.of_unique_max_ideal := IsLocalRing.of_unique_max_ideal

@[deprecated (since := "2024-11-11")]
alias LocalRing.of_unique_nonzero_prime := IsLocalRing.of_unique_nonzero_prime

@[deprecated (since := "2024-11-11")]
alias LocalRing.isUnit_or_isUnit_of_isUnit_add := IsLocalRing.isUnit_or_isUnit_of_isUnit_add

@[deprecated (since := "2024-11-11")]
alias LocalRing.nonunits_add := IsLocalRing.nonunits_add

end CommSemiring

section Ring

variable [Ring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `808973e98e356917bc9a60348ddb99d07f5c6704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
