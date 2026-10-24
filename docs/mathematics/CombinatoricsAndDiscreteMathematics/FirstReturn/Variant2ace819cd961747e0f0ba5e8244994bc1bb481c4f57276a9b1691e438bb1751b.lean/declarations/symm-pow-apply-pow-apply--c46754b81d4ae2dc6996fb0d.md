# symm_pow_apply_pow_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb132f8a-3730-d684-28c3-eeff84dcb429",
  "kind": "theorem",
  "lexical_name": "symm_pow_apply_pow_apply",
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
  "slug": "symm-pow-apply-pow-apply--c46754b81d4ae2dc6996fb0d",
  "source": {
    "blob": "17db2565bdef52ae10964e870a60c8aedb5c7473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c46754b81d4ae2dc6996fb0d5c984cc2ce52b3ff294be0594a59863d594579e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb132f8a-3730-d684-28c3-eeff84dcb429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem symm_pow_apply_pow_apply
    (P : Equiv.Perm α)
    (x : α)
    (a : Nat) :
    (P.symm ^ a) ((P ^ a) x) = x := by
  change (P⁻¹ ^ a) ((P ^ a) x) = x
  rw [← Equiv.Perm.mul_apply]
  simp

/-- Backward first return undoes forward first return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17db2565bdef52ae10964e870a60c8aedb5c7473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
