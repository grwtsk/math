# nontrivialStack_eq_iff_constant_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8535fe49-4f05-0d3e-4c8f-94cf7149868f",
  "kind": "theorem",
  "lexical_name": "nontrivialStack_eq_iff_constant_difference",
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
  "slug": "nontrivialstack-eq-iff-constant-difference--d8d27bcb183398dee5e8b848",
  "source": {
    "blob": "cdec04755523006593fa67e3030767d0870faa5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d27bcb183398dee5e8b848e349563088acda0467dddf814bd110bd29ecb732",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8535fe49-4f05-0d3e-4c8f-94cf7149868f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivialStack_eq_iff_constant_difference (f g : G → ℂ) :
    nontrivialStack f = nontrivialStack g ↔ ∃ c : ℂ, f = g + fun _ : G => c := by
  classical
  constructor
  · intro h
    refine ⟨coefficientMap 0 f-coefficientMap 0 g,?_⟩
    apply (AddChar.complexBasis G).repr.injective
    ext character
    rw [← coefficient_eq_basis_repr,← coefficient_eq_basis_repr,map_add,coefficient_constant]
    by_cases hc : character=0
    · simp [hc]
    · have hsame := congrFun h ⟨character,hc⟩
      simpa [nontrivialStack,hc] using hsame
  · rintro ⟨c,rfl⟩
    exact nontrivialStack_add_constant g c

/-- Even an arbitrary decoder cannot recover the lost coefficient from these channels alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdec04755523006593fa67e3030767d0870faa5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
