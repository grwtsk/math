# Quotient.algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e8262b9a82c25ba12f889ad8a1e94e60c81fde8b7398196856389d44bb0ba65",
  "kind": "instance",
  "lexical_name": "Quotient.algebra",
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
  "slug": "quotient-algebra--5462f56ffc7e426541afe70c",
  "source": {
    "blob": "e37043b08ba29f8c19d8a890d3e3667ce700414a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5462f56ffc7e426541afe70c794313337505466403204e32235691fd8da2c0e0",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e8262b9a82c25ba12f889ad8a1e94e60c81fde8b7398196856389d44bb0ba65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Quotient.algebra {I : Ideal A} : Algebra R₁ (A ⧸ I) :=
  { toRingHom :=  RingHom.comp (Ideal.Quotient.mk I) (algebraMap R₁ A)
    smul_def' := fun _ x =>
      Quotient.inductionOn' x fun _ =>
        ((Quotient.mk I).congr_arg <| Algebra.smul_def _ _).trans (RingHom.map_mul _ _ _)
    commutes' := fun _ _ => mul_comm _ _ }
#align ideal.quotient.algebra Ideal.Quotient.algebra

-- Lean can struggle to find this instance later if we don't provide this shortcut
-- Porting note: this can probably now be deleted
-- update: maybe not - removal causes timeouts
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e37043b08ba29f8c19d8a890d3e3667ce700414a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
