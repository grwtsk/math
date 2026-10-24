# coeff_iterate_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89202544-06c0-d112-5168-970a56653a84",
  "kind": "theorem",
  "lexical_name": "coeff_iterate_derivative",
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
  "slug": "coeff-iterate-derivative--eeda06ffb9453af952912174",
  "source": {
    "blob": "2d70f88e48c223c2d4e7b2747717889acf4c0ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 283,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeda06ffb9453af952912174652e4097b3664a5e9c115323a847711a1a1ea340",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89202544-06c0-d112-5168-970a56653a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_iterate_derivative {k} (p : R[X]) (m : ℕ) :
    (derivative^[k] p).coeff m = (m + k).descFactorial k • p.coeff (m + k) := by
  induction k generalizing m with
  | zero => simp
  | succ k ih =>
      calc
        (derivative^[k + 1] p).coeff m
        _ = Nat.descFactorial (Nat.succ (m + k)) k • p.coeff (m + k.succ) * (m + 1) := by
          rw [Function.iterate_succ_apply', coeff_derivative, ih m.succ, Nat.succ_add, Nat.add_succ]
        _ = ((m + 1) * Nat.descFactorial (Nat.succ (m + k)) k) • p.coeff (m + k.succ) := by
          rw [← Nat.cast_add_one, ← nsmul_eq_mul', smul_smul]
        _ = Nat.descFactorial (m.succ + k) k.succ • p.coeff (m + k.succ) := by
          rw [← Nat.succ_add, Nat.descFactorial_succ, add_tsub_cancel_right]
        _ = Nat.descFactorial (m + k.succ) k.succ • p.coeff (m + k.succ) := by
          rw [Nat.succ_add_eq_add_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d70f88e48c223c2d4e7b2747717889acf4c0ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
