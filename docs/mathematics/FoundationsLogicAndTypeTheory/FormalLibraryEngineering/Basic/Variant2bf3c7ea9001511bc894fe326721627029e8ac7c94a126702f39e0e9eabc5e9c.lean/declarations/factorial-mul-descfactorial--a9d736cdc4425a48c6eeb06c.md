# factorial_mul_descFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9456d81e-7ccb-c85e-0566-398f8e57e200",
  "kind": "theorem",
  "lexical_name": "factorial_mul_descFactorial",
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
  "slug": "factorial-mul-descfactorial--a9d736cdc4425a48c6eeb06c",
  "source": {
    "blob": "88b49af15be7601bb308f21811d58f4ab718cc15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 410,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d736cdc4425a48c6eeb06cc0ea15f15949d2f214e0d1a5f2a198937e62fea7",
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

Occurrence: `result:9456d81e-7ccb-c85e-0566-398f8e57e200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_mul_descFactorial : ∀ {n k : ℕ}, k ≤ n → (n - k)! * n.descFactorial k = n !
  | n, 0 => fun _ => by rw [descFactorial_zero, Nat.mul_one, Nat.sub_zero]
  | 0, succ k => fun h => by
    exfalso
    exact not_succ_le_zero k h
  | succ n, succ k => fun h => by
    rw [succ_descFactorial_succ, succ_sub_succ, ← Nat.mul_assoc, Nat.mul_comm (n - k)!,
      Nat.mul_assoc, factorial_mul_descFactorial (Nat.succ_le_succ_iff.1 h), factorial_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88b49af15be7601bb308f21811d58f4ab718cc15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
