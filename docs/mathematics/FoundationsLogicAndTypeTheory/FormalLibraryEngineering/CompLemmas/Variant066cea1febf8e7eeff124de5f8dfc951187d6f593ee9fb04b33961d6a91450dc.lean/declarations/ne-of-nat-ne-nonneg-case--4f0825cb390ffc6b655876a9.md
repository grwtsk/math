# ne_of_nat_ne_nonneg_case

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f31f862a-e3c6-9eee-8d2a-bcd364d15d95",
  "kind": "theorem",
  "lexical_name": "ne_of_nat_ne_nonneg_case",
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
  "slug": "ne-of-nat-ne-nonneg-case--4f0825cb390ffc6b655876a9",
  "source": {
    "blob": "17b6e48c65317fc5858a4f2db7e634fc3824d047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f0825cb390ffc6b655876a9c49e325f2742cd584a6269ad68b26b0d61fc88ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f31f862a-e3c6-9eee-8d2a-bcd364d15d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ne_of_nat_ne_nonneg_case {a b : ℤ} {n m : Nat} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (e1 : natAbs a = n) (e2 : natAbs b = m) (h : n ≠ m) : a ≠ b :=
  have : natAbs a ≠ natAbs b := by rwa [e1, e2]
  ne_of_natAbs_ne_natAbs_of_nonneg ha hb this
#align int.ne_of_nat_ne_nonneg_case Int.ne_of_nat_ne_nonneg_case

/-! 4. Aux lemmas for pushing `Int.natAbs` inside numerals
   `Int.natAbs_zero` and `Int.natAbs_one` are defined in Std4 and aligned in
   `Matlib/Init/Data/Int/Basic.lean` -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b6e48c65317fc5858a4f2db7e634fc3824d047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
