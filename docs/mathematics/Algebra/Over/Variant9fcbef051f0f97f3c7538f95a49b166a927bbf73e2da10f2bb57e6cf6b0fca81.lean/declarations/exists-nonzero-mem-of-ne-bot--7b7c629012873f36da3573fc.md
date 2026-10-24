# exists_nonzero_mem_of_ne_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d2b9419-8c59-2ae9-5408-8d0e6fcb172e",
  "kind": "theorem",
  "lexical_name": "exists_nonzero_mem_of_ne_bot",
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
  "slug": "exists-nonzero-mem-of-ne-bot--7b7c629012873f36da3573fc",
  "source": {
    "blob": "9eff4df97936422d010f723bf024f2a045de6dfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 124,
    "path": "GRWTSK/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b7c629012873f36da3573fca85e76f33c07aa65a22bf3cc8680fd9956f45eb7",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2b9419-8c59-2ae9-5408-8d0e6fcb172e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem exists_nonzero_mem_of_ne_bot {P : Ideal R[X]} (Pb : P ≠ ⊥) (hP : ∀ x : R, C x ∈ P → x = 0) :
    ∃ p : R[X], p ∈ P ∧ Polynomial.map (Quotient.mk (P.comap (C : R →+* R[X]))) p ≠ 0 := by
  obtain ⟨m, hm⟩ := Submodule.nonzero_mem_of_bot_lt (bot_lt_iff_ne_bot.mpr Pb)
  refine' ⟨m, Submodule.coe_mem m, fun pp0 => hm (Submodule.coe_eq_zero.mp _)⟩
  refine'
    (injective_iff_map_eq_zero (Polynomial.mapRingHom (Ideal.Quotient.mk
      (P.comap (C : R →+* R[X]))))).mp
      _ _ pp0
  refine' map_injective _ ((Ideal.Quotient.mk (P.comap C)).injective_iff_ker_eq_bot.mpr _)
  rw [mk_ker]
  exact (Submodule.eq_bot_iff _).mpr fun x hx => hP x (mem_comap.mp hx)
#align ideal.exists_nonzero_mem_of_ne_bot Ideal.exists_nonzero_mem_of_ne_bot

variable {p : Ideal R} {P : Ideal S}

/-- If there is an injective map `R/p → S/P` such that following diagram commutes:
```
R   → S
↓     ↓
R/p → S/P
```
then `P` lies over `p`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eff4df97936422d010f723bf024f2a045de6dfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
