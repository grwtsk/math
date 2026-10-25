# lt_add_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b447b12-a6ec-7897-e6b7-1dd46d87fec8",
  "kind": "theorem",
  "lexical_name": "lt_add_cases",
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
  "slug": "lt-add-cases--bbc6ee69bac21117126ac3b8",
  "source": {
    "blob": "8f1aaf70579aed28af6c9185a4495b3200e2bc53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant495f0f12763c548fbc10b03669069cc82fd1873e7fb301118cbc5a3f2a5d369e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc6ee69bac21117126ac3b80c7fb8a16a984dd18e9c77e49a7287b5e3031956",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant495f0f12763c548fbc10b03669069cc82fd1873e7fb301118cbc5a3f2a5d369e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b447b12-a6ec-7897-e6b7-1dd46d87fec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_add_cases {a b c : Nimber} (h : a < b + c) : a + c < b ∨ a + b < c := by
  obtain ha | hb | hc := add_trichotomy <| add_assoc a b c ▸ add_ne_zero_iff.2 h.ne
  exacts [(h.asymm ha).elim, Or.inl <| add_comm c a ▸ hb, Or.inr hc]

/-- Nimber addition of naturals corresponds to the bitwise XOR operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant495f0f12763c548fbc10b03669069cc82fd1873e7fb301118cbc5a3f2a5d369e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant495f0f12763c548fbc10b03669069cc82fd1873e7fb301118cbc5a3f2a5d369e.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1aaf70579aed28af6c9185a4495b3200e2bc53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
