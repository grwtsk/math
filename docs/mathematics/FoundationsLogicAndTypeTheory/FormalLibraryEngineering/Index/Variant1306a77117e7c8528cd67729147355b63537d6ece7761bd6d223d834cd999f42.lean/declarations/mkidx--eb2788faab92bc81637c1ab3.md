# mkIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cabbfa3947bb0880c0f6ccce31bcef655804c7d6f50885dbd63277e63178c36f",
  "kind": "def",
  "lexical_name": "mkIdx",
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
  "slug": "mkidx--eb2788faab92bc81637c1ab3",
  "source": {
    "blob": "9db685587bb7539e77fdb743165153060f3ae74a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb2788faab92bc81637c1ab3c570a323b9e2504d3b249c56047424e2464b236b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cabbfa3947bb0880c0f6ccce31bcef655804c7d6f50885dbd63277e63178c36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[irreducible, inline, expose] def mkIdx (sz : Nat) (h : 0 < sz) (hash : UInt64) :
    { u : USize // u.toNat < sz } :=
  ⟨(scrambleHash hash).toUSize &&& (USize.ofNat sz - 1), by
    -- This proof is a good test for our USize API
    by_cases h' : sz < USize.size
    · rw [USize.toNat_and, USize.toNat_sub_of_le, USize.toNat_ofNat_of_lt' h']
      · exact Nat.lt_of_le_of_lt Nat.and_le_right (Nat.sub_lt h (by simp))
      · simp [USize.le_iff_toNat_le, Nat.mod_eq_of_lt h', Nat.succ_le_of_lt h]
    · exact Nat.lt_of_lt_of_le (USize.toNat_lt_size _) (Nat.le_of_not_lt h')⟩

end Std.DHashMap.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9db685587bb7539e77fdb743165153060f3ae74a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
