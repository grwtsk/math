# add_descFactorial_eq_ascFactorial'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bd8b3a1-f789-2d05-eeac-e8bbe67bee1f",
  "kind": "theorem",
  "lexical_name": "add_descFactorial_eq_ascFactorial'",
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
  "slug": "add-descfactorial-eq-ascfactorial--9ce649617d886ee1a1a79a8a",
  "source": {
    "blob": "88b49af15be7601bb308f21811d58f4ab718cc15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 400,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ce649617d886ee1a1a79a8a93b68cda94e98f9639af41038dbc7f773de2b6c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bd8b3a1-f789-2d05-eeac-e8bbe67bee1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_descFactorial_eq_ascFactorial' (n : ℕ) :
    ∀ k : ℕ, (n + k - 1).descFactorial k = n.ascFactorial k
  | 0 => by rw [ascFactorial_zero, descFactorial_zero]
  | succ k => by
    rw [descFactorial_succ, ascFactorial_succ, ← succ_add_eq_add_succ,
      add_descFactorial_eq_ascFactorial' _ k, ← succ_ascFactorial, succ_add_sub_one,
      Nat.add_sub_cancel]

/-- `n.descFactorial k = n! / (n - k)!` but without ℕ-division. See `Nat.descFactorial_eq_div`
for the version using ℕ-division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88b49af15be7601bb308f21811d58f4ab718cc15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
