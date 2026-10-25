# log_eq_logC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f6ae5b3-7a0e-1b03-23c3-ec4751c26eaa",
  "kind": "theorem",
  "lexical_name": "log_eq_logC",
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
  "slug": "log-eq-logc--ae9622c7733e7b5cc1df098f",
  "source": {
    "blob": "94be3f2415c7bbf188d444fbcc2c63d9d66e5002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 433,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae9622c7733e7b5cc1df098fa44e7e8a43fe67f94e6d01cd28344e7ef8082075",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f6ae5b3-7a0e-1b03-23c3-ec4751c26eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] theorem log_eq_logC : log = logC := by
  ext b m
  rcases le_or_lt b 1 with hb | hb
  case inl => rw [logC_of_left_le_one hb, Nat.log_of_left_le_one hb]
  case inr =>
    rcases eq_or_ne m 0 with rfl | hm
    case inl => rw [Nat.log_zero_right, logC_zero]
    case inr =>
      rw [Nat.log_eq_iff (Or.inr ⟨hb, hm⟩)]
      exact logC_spec hb (zero_lt_of_ne_zero hm)

end computation

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94be3f2415c7bbf188d444fbcc2c63d9d66e5002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
