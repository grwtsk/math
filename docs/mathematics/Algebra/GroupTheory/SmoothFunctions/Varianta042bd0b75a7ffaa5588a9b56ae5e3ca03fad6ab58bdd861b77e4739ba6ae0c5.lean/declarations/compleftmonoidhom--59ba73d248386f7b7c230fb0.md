# compLeftMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd40bd20f164dfa31c863b9ca18291b5b3a1148ea30990412f39dd546a01ba4d",
  "kind": "def",
  "lexical_name": "compLeftMonoidHom",
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
  "slug": "compleftmonoidhom--59ba73d248386f7b7c230fb0",
  "source": {
    "blob": "0f5616d6e61c5aa67750f017b422887f367f9f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 123,
    "path": "GRWTSK/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59ba73d248386f7b7c230fb0dcd960453d035f09905d98e189d63a0479130259",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd40bd20f164dfa31c863b9ca18291b5b3a1148ea30990412f39dd546a01ba4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compLeftMonoidHom {G' : Type*} [Monoid G'] [TopologicalSpace G'] [ChartedSpace H' G']
    [SmoothMul I' G'] {G'' : Type*} [Monoid G''] [TopologicalSpace G''] [ChartedSpace H'' G'']
    [SmoothMul I'' G''] (φ : G' →* G'') (hφ : Smooth I' I'' φ) :
    C^∞⟮I, N; I', G'⟯ →* C^∞⟮I, N; I'', G''⟯ where
  toFun f := ⟨φ ∘ f, fun x => (hφ.smooth _).comp x (f.contMDiff x)⟩
  map_one' := by ext; show φ 1 = 1; simp
  map_mul' f g := by ext x; show φ (f x * g x) = φ (f x) * φ (g x); simp
#align smooth_map.comp_left_monoid_hom SmoothMap.compLeftMonoidHom
#align smooth_map.comp_left_add_monoid_hom SmoothMap.compLeftAddMonoidHom

variable (I') {N}

-- porting note: TODO: generalize to any smooth map instead of `Set.inclusion`
/-- For a Lie group `G` and open sets `U ⊆ V` in `N`, the 'restriction' group homomorphism from
`C^∞⟮I, V; I', G⟯` to `C^∞⟮I, U; I', G⟯`. -/
@[to_additive "For an additive Lie group `G` and open sets `U ⊆ V` in `N`, the 'restriction' group
homomorphism from `C^∞⟮I, V; I', G⟯` to `C^∞⟮I, U; I', G⟯`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5616d6e61c5aa67750f017b422887f367f9f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
