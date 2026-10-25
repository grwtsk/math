# write_eq_implies_stateEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52177d59-8a1a-1693-dd25-a9ee7898f141",
  "kind": "theorem",
  "lexical_name": "write_eq_implies_stateEq",
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
  "slug": "write-eq-implies-stateeq--612b6d6f18cee9971c7c309c",
  "source": {
    "blob": "c61891b1fecb532c0379b5a6e2a6c6c8bb04c0ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:612b6d6f18cee9971c7c309c1ce422c6f09c81aea3ae2d4ea105f6bebf890549",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52177d59-8a1a-1693-dd25-a9ee7898f141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem write_eq_implies_stateEq {t : Register} {v : Word} {ζ₁ ζ₂ : State}
    (h : ζ₁ ≃[t + 1] write t v ζ₂) : ζ₁ ≃[t] ζ₂ := by
  simp [StateEq, StateEqRs] at *
  constructor; · exact h.1
  intro r hr
  cases' h with _ h
  specialize h r (lt_trans hr (Register.lt_succ_self _))
  rwa [if_neg (ne_of_lt hr)] at h
#align arithcc.write_eq_implies_state_eq Arithcc.write_eq_implies_stateEq

/-- The main **compiler correctness theorem**.

Unlike Theorem 1 in the paper, both `map` and the assumption on `t` are explicit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61891b1fecb532c0379b5a6e2a6c6c8bb04c0ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
