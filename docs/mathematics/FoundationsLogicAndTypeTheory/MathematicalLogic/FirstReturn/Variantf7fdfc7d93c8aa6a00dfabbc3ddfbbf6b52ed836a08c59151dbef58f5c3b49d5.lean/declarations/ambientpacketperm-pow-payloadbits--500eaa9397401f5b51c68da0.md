# ambientPacketPerm_pow_payloadBits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d324ffa82dd5e1f52c004c15a72890508f8a7f80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f826e0f-54a9-1282-7fef-1888c80cbe4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0cc869b-44a2-20fc-eeba-5de4d933a55b",
  "kind": "theorem",
  "lexical_name": "ambientPacketPerm_pow_payloadBits",
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
  "slug": "ambientpacketperm-pow-payloadbits--500eaa9397401f5b51c68da0",
  "source": {
    "blob": "d324ffa82dd5e1f52c004c15a72890508f8a7f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:500eaa9397401f5b51c68da0b7168d70ea5a22778e28b6ca334b86bdd4960050",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0cc869b-44a2-20fc-eeba-5de4d933a55b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ambientPacketPerm_pow_payloadBits
    (rowPerm : Equiv.Perm (Fin k → F))
    (t : Nat)
    (a : AmbientPacketFiber F r k) :
    (((ambientPacketPerm rowPerm) ^ t) a).payloadBits = a.payloadBits := by
  induction t generalizing a with
  | zero => rfl
  | succ t ih =>
      simp only [pow_succ, Equiv.Perm.mul_apply]
      exact ih _

variable [Field F] [Fintype F] [Algebra BitMatrix.FiniteField.GF2 F]

/-- First return on the valid ambient image at one fixed row grade. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d324ffa82dd5e1f52c004c15a72890508f8a7f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
