# extensionValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:547c45067f6cf1b2be510b5b0d78c68e8fc84fd518f9bd7abdbd0d7ee329146c",
  "kind": "def",
  "lexical_name": "extensionValuation",
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
  "slug": "extensionvaluation--7ae9bddf92fc3feb0bcf2727",
  "source": {
    "blob": "52ee14416de300957883ed402d9fc6fe7f66c27e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ae9bddf92fc3feb0bcf2727108c0d739b9f6e5a1f270ded6eb8a42d676a2d36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:547c45067f6cf1b2be510b5b0d78c68e8fc84fd518f9bd7abdbd0d7ee329146c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extensionValuation : Valuation (hat K) Γ₀ where
  toFun := ValueGroup₀.embedding ∘ Valued.extension
  map_zero' := by
    rw [Function.comp_apply, map_eq_zero, ← v.restrict.map_zero (R := K),
      ← Valued.extension_extends (0 : K), Completion.coe_zero]
  map_one' := by
    rw [Function.comp_apply, ← Completion.coe_one, Valued.extension_extends (1 : K),
      Valuation.map_one _, map_one]
  map_mul' x y := by
    simp only [Function.comp_apply, ← map_mul]
    rw [embedding_strictMono.injective.eq_iff]
    apply Completion.induction_on₂ x y
      (p := fun x y => extension (x * y) = extension x * extension y)
    · have c1 : Continuous fun x : hat K × hat K => Valued.extension (x.1 * x.2) :=
        Valued.continuous_extension.comp (continuous_fst.mul continuous_snd)
      have c2 : Continuous fun x : hat K × hat K => Valued.extension x.1 * Valued.extension x.2 :=
        (Valued.continuous_extension.comp continuous_fst).mul
          (Valued.continuous_extension.comp continuous_snd)
      exact isClosed_eq c1 c2
    · intro x y
      norm_cast
      exact Valuation.map_mul _ _ _
  map_add_le_max' x y := by
    simp_rw [le_max_iff, Function.comp_apply]
    rw [embedding_strictMono.le_iff_le, embedding_strictMono.le_iff_le (f := embedding)]
    apply Completion.induction_on₂ x y
      (p := fun x y => extension (x + y) ≤ extension x ∨ extension (x + y) ≤ extension y)
    · have cont : Continuous (Valued.extension : hat K → _) := Valued.continuous_extension
      exact (isClosed_le (by fun_prop) <| cont.comp continuous_fst).union
          (isClosed_le (by fun_prop) <| cont.comp continuous_snd)
    · intro x y
      norm_cast
      exact le_max_iff.mp (v.restrict.map_add x y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ee14416de300957883ed402d9fc6fe7f66c27e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
