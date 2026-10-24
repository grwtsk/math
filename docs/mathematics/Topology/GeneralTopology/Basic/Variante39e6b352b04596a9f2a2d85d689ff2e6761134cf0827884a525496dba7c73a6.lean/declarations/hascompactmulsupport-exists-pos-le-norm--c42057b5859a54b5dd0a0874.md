# HasCompactMulSupport.exists_pos_le_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f0a09f9-5bca-a8eb-075e-88fa139cae45",
  "kind": "theorem",
  "lexical_name": "HasCompactMulSupport.exists_pos_le_norm",
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
  "slug": "hascompactmulsupport-exists-pos-le-norm--c42057b5859a54b5dd0a0874",
  "source": {
    "blob": "c700082d1a0bf4ea8779800957d94d938ec63c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2147,
    "line": 2125,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c42057b5859a54b5dd0a0874723124138334a350e591d8889aa5d1f756cc9304",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0a09f9-5bca-a8eb-075e-88fa139cae45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2125–2147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactMulSupport.exists_pos_le_norm [One E] (hf : HasCompactMulSupport f) :
    ∃ R : ℝ, 0 < R ∧ ∀ x : α, R ≤ ‖x‖ → f x = 1 := by
  obtain ⟨K, ⟨hK1, hK2⟩⟩ := exists_compact_iff_hasCompactMulSupport.mpr hf
  obtain ⟨S, hS, hS'⟩ := hK1.bounded.exists_pos_norm_le
  refine' ⟨S + 1, by positivity, fun x hx => hK2 x ((mt <| hS' x) _)⟩
  -- porting note: `ENNReal.add_lt_add` should be `protected`?
  -- [context: we used `_root_.add_lt_add` in a previous version of this proof]
  contrapose! hx
  exact lt_add_of_le_of_pos hx zero_lt_one
#align has_compact_mul_support.exists_pos_le_norm HasCompactMulSupport.exists_pos_le_norm
#align has_compact_support.exists_pos_le_norm HasCompactSupport.exists_pos_le_norm

end NormedAddGroupSource

/-! ### `ULift` -/


namespace ULift

section Norm

variable [Norm E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean#L2125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c700082d1a0bf4ea8779800957d94d938ec63c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
