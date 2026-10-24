# dfoldrM_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea55de20-ac66-4b53-ab3b-71ed26ce68a0",
  "kind": "theorem",
  "lexical_name": "dfoldrM_loop",
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
  "slug": "dfoldrm-loop--3149562b491bbfd8f3b2db5f",
  "source": {
    "blob": "5a263b7d02299b84d54853ad7b1d2df397ec04d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantd32b3921960398e800255f05cd9cfc780b4cbd68656f12efe3675588a8d63a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3149562b491bbfd8f3b2db5f39caafd6933c02be957f78b82ac34ebed1abb6f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantd32b3921960398e800255f05cd9cfc780b4cbd68656f12efe3675588a8d63a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea55de20-ac66-4b53-ab3b-71ed26ce68a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dfoldrM_loop [Monad m] [LawfulMonad m] (f : (i : Fin (n+1)) → α i.succ → m (α i.castSucc))
    (x) : dfoldrM.loop (n+1) α f (i+1) h x =
      dfoldrM.loop n (α ∘ succ) (f ·.succ) i (by omega) x >>= f 0 := by
  induction i with
  | zero =>
    rw [dfoldrM_loop_zero, dfoldrM_loop_succ, pure_bind]
    conv => rhs; rw [← bind_pure (f 0 x)]
    rfl
  | succ i ih =>
    rw [dfoldrM_loop_succ, dfoldrM_loop_succ, bind_assoc]
    congr; funext; exact ih ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantd32b3921960398e800255f05cd9cfc780b4cbd68656f12efe3675588a8d63a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantd32b3921960398e800255f05cd9cfc780b4cbd68656f12efe3675588a8d63a98.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a263b7d02299b84d54853ad7b1d2df397ec04d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
