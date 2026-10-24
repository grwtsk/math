# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:642ac4cbf67f794305a6ef1f0f608e3aefa6ff0a70888d689382bd55827ed636",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--1964edf90e5abc2ff47a80cf",
  "source": {
    "blob": "0298015cb222882f1b5f64d69db6c117b2b3a3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 445,
    "path": "GRWTSK/Algebra/Truncated/Variant96b05389f2a6eacb031cb04e15f8ce88f03feef90545626db5f422d1880af5f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1964edf90e5abc2ff47a80cf94543630504fc8556066bbcfccd2bc5401e2bc0b",
  "verification": {
    "reference": "docs/verification/Algebra/Truncated/Variant96b05389f2a6eacb031cb04e15f8ce88f03feef90545626db5f422d1880af5f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:642ac4cbf67f794305a6ef1f0f608e3aefa6ff0a70888d689382bd55827ed636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift : S →+* 𝕎 R := by
  refine { toFun := liftFun f
           map_zero' := ?_
           map_one' := ?_
           map_add' := ?_
           map_mul' := ?_ } <;>
  ( intros
    rw [← sub_eq_zero, ← Ideal.mem_bot, ← iInf_ker_truncate, Ideal.mem_iInf]
    simp [RingHom.mem_ker, f_compat])

variable {f}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Truncated/Variant96b05389f2a6eacb031cb04e15f8ce88f03feef90545626db5f422d1880af5f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Truncated/Variant96b05389f2a6eacb031cb04e15f8ce88f03feef90545626db5f422d1880af5f2.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0298015cb222882f1b5f64d69db6c117b2b3a3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
