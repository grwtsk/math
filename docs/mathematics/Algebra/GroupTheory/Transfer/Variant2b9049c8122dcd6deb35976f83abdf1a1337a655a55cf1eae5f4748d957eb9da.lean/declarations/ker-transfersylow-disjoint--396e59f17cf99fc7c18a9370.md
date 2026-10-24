# ker_transferSylow_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df9f55b4-eab5-4df2-37c3-43fba0edb1c1",
  "kind": "theorem",
  "lexical_name": "ker_transferSylow_disjoint",
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
  "slug": "ker-transfersylow-disjoint--396e59f17cf99fc7c18a9370",
  "source": {
    "blob": "cdc965fa401dfada1919ba8415a27302088ca81a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 303,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant2b9049c8122dcd6deb35976f83abdf1a1337a655a55cf1eae5f4748d957eb9da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396e59f17cf99fc7c18a9370c53526a97b91b55434f25c161aa37da4c90e3658",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant2b9049c8122dcd6deb35976f83abdf1a1337a655a55cf1eae5f4748d957eb9da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df9f55b4-eab5-4df2-37c3-43fba0edb1c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_transferSylow_disjoint (Q : Subgroup G) (hQ : IsPGroup p Q) :
    Disjoint (transferSylow P hP).ker Q :=
  disjoint_iff.mpr <|
    card_eq_one.mp <|
      (hQ.to_le inf_le_right).card_eq_or_dvd.resolve_right fun h =>
        not_dvd_card_ker_transferSylow P hP <| h.trans <| card_dvd_of_le inf_le_left

end BurnsideTransfer

end MonoidHom

namespace IsCyclic

open Subgroup

-- we could suppress the variable `p`, but that might introduce `motive not type correct` issues.
variable {G : Type*} [Group G] [Finite G] {p : ℕ} (hp : (Nat.card G).minFac = p) {P : Sylow p G}

include hp in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant2b9049c8122dcd6deb35976f83abdf1a1337a655a55cf1eae5f4748d957eb9da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant2b9049c8122dcd6deb35976f83abdf1a1337a655a55cf1eae5f4748d957eb9da.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc965fa401dfada1919ba8415a27302088ca81a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
