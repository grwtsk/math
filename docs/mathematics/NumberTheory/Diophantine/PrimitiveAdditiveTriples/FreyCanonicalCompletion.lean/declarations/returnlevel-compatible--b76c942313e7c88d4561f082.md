# returnLevel_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00353c00-cec4-4388-39f6-be0b66baa84a",
  "kind": "theorem",
  "lexical_name": "returnLevel_compatible",
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
  "slug": "returnlevel-compatible--b76c942313e7c88d4561f082",
  "source": {
    "blob": "085820f4f70348c977aae1c6ee50442992dba867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b76c942313e7c88d4561f0820eb2b61ce2ea004029dc1b01079d70977bae6c00",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00353c00-cec4-4388-39f6-be0b66baa84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem returnLevel_compatible (a b r : R) {m n : ℕ} (hmn : m ≤ n) :
    (transition a b r m n hmn).comp (returnLevel a b r n) = returnLevel a b r m := by
  apply AlgHom.ext
  intro u
  change transition a b r m n hmn
      (transition a b r n (n + 1) (Nat.le_succ n) ((finiteEquiv a b r n).symm (u.val n))) =
    transition a b r m (m + 1) (Nat.le_succ m) ((finiteEquiv a b r m).symm (u.val m))
  calc
    _ = transition a b r m (n + 1) (hmn.trans (Nat.le_succ n))
        ((finiteEquiv a b r n).symm (u.val n)) :=
      DFunLike.congr_fun (transition_comp a b r m n (n + 1) hmn (Nat.le_succ n)) _
    _ = transition a b r m (m + 1) (Nat.le_succ m)
        (transition a b r (m + 1) (n + 1) (Nat.succ_le_succ hmn)
          ((finiteEquiv a b r n).symm (u.val n))) :=
      (DFunLike.congr_fun (transition_comp a b r m (m + 1) (n + 1)
        (Nat.le_succ m) (Nat.succ_le_succ hmn)) _).symm
    _ = _ := by rw [finiteEquiv_symm_transition, u.property m n hmn]

/-- At a positive exponent, recovery uses exactly the preceding jet order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `085820f4f70348c977aae1c6ee50442992dba867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
