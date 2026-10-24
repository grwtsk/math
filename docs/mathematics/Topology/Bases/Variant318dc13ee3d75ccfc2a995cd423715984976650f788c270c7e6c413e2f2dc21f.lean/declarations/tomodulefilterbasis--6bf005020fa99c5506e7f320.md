# toModuleFilterBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a31ce56c29e849d5703a04e89f7609da32fca036b4e9d51fb0a051f1b77efe45",
  "kind": "def",
  "lexical_name": "toModuleFilterBasis",
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
  "slug": "tomodulefilterbasis--6bf005020fa99c5506e7f320",
  "source": {
    "blob": "2c149838e3b14ebc4d39426e8091b745f9194d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 271,
    "path": "GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bf005020fa99c5506e7f32084f221237fb651f396aab731007cab66ed15e740",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a31ce56c29e849d5703a04e89f7609da32fca036b4e9d51fb0a051f1b77efe45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toModuleFilterBasis : ModuleFilterBasis R M where
  sets := { U | ∃ i, U = B i }
  nonempty := by
    inhabit ι
    exact ⟨B default, default, rfl⟩
  inter_sets := by
    rintro _ _ ⟨i, rfl⟩ ⟨j, rfl⟩
    cases' hB.inter i j with k hk
    use B k
    constructor
    · use k
    · exact hk
  zero' := by
    rintro _ ⟨i, rfl⟩
    exact (B i).zero_mem
  add' := by
    rintro _ ⟨i, rfl⟩
    use B i
    constructor
    · use i
    · rintro x ⟨y, z, y_in, z_in, rfl⟩
      exact (B i).add_mem y_in z_in
  neg' := by
    rintro _ ⟨i, rfl⟩
    use B i
    constructor
    · use i
    · intro x x_in
      exact (B i).neg_mem x_in
  conj' := by
    rintro x₀ _ ⟨i, rfl⟩
    use B i
    constructor
    · use i
    · simp
  smul' := by
    rintro _ ⟨i, rfl⟩
    use univ
    constructor
    · exact univ_mem
    · use B i
      constructor
      · use i
      · rintro _ ⟨a, m, -, hm, rfl⟩
        exact (B i).smul_mem _ hm
  smul_left' := by
    rintro x₀ _ ⟨i, rfl⟩
    use B i
    constructor
    · use i
    · intro m
      exact (B i).smul_mem _
  smul_right' := by
    rintro m₀ _ ⟨i, rfl⟩
    exact hB.smul m₀ i
#align submodules_basis.to_module_filter_basis SubmodulesBasis.toModuleFilterBasis

/-- The topology associated to a basis of submodules in a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c149838e3b14ebc4d39426e8091b745f9194d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
