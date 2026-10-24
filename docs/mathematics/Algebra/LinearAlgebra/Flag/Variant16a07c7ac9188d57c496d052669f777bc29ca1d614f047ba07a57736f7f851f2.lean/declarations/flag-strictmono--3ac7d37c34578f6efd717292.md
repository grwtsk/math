# flag_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb69fb56-345f-2c4a-7d34-f4c9dddeef73",
  "kind": "theorem",
  "lexical_name": "flag_strictMono",
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
  "slug": "flag-strictmono--3ac7d37c34578f6efd717292",
  "source": {
    "blob": "3eada757a3a14fef2550d20537886e4dd9d72503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac7d37c34578f6efd7172926b439f5b989cc5742532b47e715cd3f3c3b1900b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb69fb56-345f-2c4a-7d34-f4c9dddeef73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flag_strictMono [Nontrivial R] (b : Basis (Fin n) R M) : StrictMono b.flag :=
  Fin.strictMono_iff_lt_succ.2 fun _ ↦ by simp [flag_succ]

end Semiring

section Ring

variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M] {n : ℕ}

/-- The span of the new head vector lies in the successor flag of `Basis.mkFinCons`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eada757a3a14fef2550d20537886e4dd9d72503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
