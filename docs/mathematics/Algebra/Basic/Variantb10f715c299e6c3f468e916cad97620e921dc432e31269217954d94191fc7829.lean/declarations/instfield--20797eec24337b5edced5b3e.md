# instField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8be281be250019020fd2cb282f4c606967930ced2c3594dfd457b1bd75062a22",
  "kind": "instance",
  "lexical_name": "instField",
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
  "slug": "instfield--20797eec24337b5edced5b3e",
  "source": {
    "blob": "3f5de911ff81bf5a8a6dc2e3dbfe8a4a7beec8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 481,
    "path": "GRWTSK/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20797eec24337b5edced5b3ea2a0933803e831efa841c7cd9e24eb2f6f2f3860",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8be281be250019020fd2cb282f4c606967930ced2c3594dfd457b1bd75062a22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instField : Field ℝ where
  mul_inv_cancel := by
    rintro ⟨a⟩ h
    rw [mul_comm]
    simp only [← ofCauchy_inv, ← ofCauchy_mul, ← ofCauchy_one, ← ofCauchy_zero,
      Ne, ofCauchy.injEq] at *
    exact CauSeq.Completion.inv_mul_cancel h
  inv_zero := by simp [← ofCauchy_zero, ← ofCauchy_inv]
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl
  nnratCast_def q := by
    rw [← ofCauchy_nnratCast, NNRat.cast_def, ofCauchy_div, ofCauchy_natCast, ofCauchy_natCast]
  ratCast_def q := by
    rw [← ofCauchy_ratCast, Rat.cast_def, ofCauchy_div, ofCauchy_natCast, ofCauchy_intCast]

-- Extra instances to short-circuit type class resolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f5de911ff81bf5a8a6dc2e3dbfe8a4a7beec8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
