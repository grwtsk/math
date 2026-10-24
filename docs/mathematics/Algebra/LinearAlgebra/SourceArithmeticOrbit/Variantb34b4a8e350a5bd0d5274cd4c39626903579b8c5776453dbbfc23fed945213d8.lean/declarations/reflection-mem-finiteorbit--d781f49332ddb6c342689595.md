# reflection_mem_finiteOrbit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba8546c3-3059-045f-c7b7-e42624f0ec24",
  "kind": "theorem",
  "lexical_name": "reflection_mem_finiteOrbit",
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
  "slug": "reflection-mem-finiteorbit--d781f49332ddb6c342689595",
  "source": {
    "blob": "d36d250bcb707fa262f039219650a783757427cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d781f49332ddb6c3426895950295dccf991886b544d832bd66d7e223be51fedd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba8546c3-3059-045f-c7b7-e42624f0ec24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_mem_finiteOrbit {q : ComplexL2} (hq : reflection q = q)
    (I : Finset ℕ) {f : ComplexL2} (hf : f ∈ finiteOrbit q I) :
    reflection f ∈ finiteOrbit q I := by
  induction hf using Submodule.span_induction with
  | mem f hf =>
    rcases hf with ⟨⟨ε, δ, m⟩, rfl⟩
    change reflection (orbitAtom q ε δ m) ∈ finiteOrbit q I
    cases δ
    · exact orbitAtom_reflection_original hq ε m ▸ orbitAtom_mem q m.property (!ε) false
    · rw [orbitAtom_reflection_dual hq ε m]
      exact (finiteOrbit q I).neg_mem (orbitAtom_mem q m.property (!ε) true)
  | zero => simpa only [map_zero] using (finiteOrbit q I).zero_mem
  | add f g _ _ ihf ihg => simpa using (finiteOrbit q I).add_mem ihf ihg
  | smul c f _ ih => simpa using (finiteOrbit q I).smul_mem c ih

/-- The actual quarter turn preserves the orbit by its literal R-after-T factorization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36d250bcb707fa262f039219650a783757427cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
