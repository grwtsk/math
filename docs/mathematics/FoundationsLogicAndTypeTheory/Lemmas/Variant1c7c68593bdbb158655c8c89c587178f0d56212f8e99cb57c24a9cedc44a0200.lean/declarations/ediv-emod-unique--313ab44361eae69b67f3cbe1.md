# ediv_emod_unique''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c0a5e74-6584-affc-a342-92bb4088cacb",
  "kind": "theorem",
  "lexical_name": "ediv_emod_unique''",
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
  "slug": "ediv-emod-unique--313ab44361eae69b67f3cbe1",
  "source": {
    "blob": "e73019858dc6ee70a0c71d86f6b99dfbb7833f03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313ab44361eae69b67f3cbe10bbc8ea70b7aa4adc6abf347d7932f3db56db861",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c0a5e74-6584-affc-a342-92bb4088cacb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediv_emod_unique'' {a b r q : Int} (h : b ≠ 0) :
    a / b = q ∧ a % b = r ↔ r + b * q = a ∧ 0 ≤ r ∧ r < |b| := by
  constructor
  · intro ⟨rfl, rfl⟩
    exact ⟨emod_add_ediv a b, emod_nonneg _ h, emod_lt_abs _ h⟩
  · intro ⟨rfl, hz, hb⟩
    constructor
    · rw [Int.add_mul_ediv_left r q h, ediv_eq_zero_of_lt_abs hz hb]
      simp [Int.zero_add]
    · rw [add_mul_emod_self_left, ← emod_abs, emod_eq_of_lt hz hb]

end Int
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e73019858dc6ee70a0c71d86f6b99dfbb7833f03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
