# liftAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cee5ac0f087319727f2148f803050b0d7d89e7dc530ba0b7323f44deda7c73dd",
  "kind": "def",
  "lexical_name": "liftAlgHom",
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
  "slug": "liftalghom--48b81a0ea8f0cc0f2a62a93d",
  "source": {
    "blob": "3bcc672bd83bdf455bcf785a7c57df8a01a68f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 401,
    "path": "GRWTSK/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48b81a0ea8f0cc0f2a62a93dd004c463949b62f171e7200b0e7320d416b33cf5",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cee5ac0f087319727f2148f803050b0d7d89e7dc530ba0b7323f44deda7c73dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftAlgHom (f : (n : ℕ) → A →ₐ[R] S ⧸ I ^ n)
    (hf : ∀ {m n : ℕ} (hle : m ≤ n),
      (Ideal.Quotient.factorₐ R (Ideal.pow_le_pow_right hle)).comp (f n) = f m) :
    A →ₐ[R] AdicCompletion I S where
  __ := liftRingHom I (fun n ↦ (f n).toRingHom) <| fun hle ↦ by ext x; exact congr($(hf hle) x)
  commutes' r := ext_evalₐ fun n ↦ by
    simp [evalₐ_liftRingHom _ _ <| fun hle ↦ by ext x; exact congr($(hf hle) x)]

variable (f : (n : ℕ) → A →ₐ[R] S ⧸ I ^ n)
  (hf : ∀ {m n : ℕ} (hle : m ≤ n),
    (Ideal.Quotient.factorₐ R (Ideal.pow_le_pow_right hle)).comp (f n) = f m)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcc672bd83bdf455bcf785a7c57df8a01a68f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
