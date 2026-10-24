# compLeftRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07aaf670941b073970804a1f5cc7bbf750ce50ca56043698722c2a077a5553c5",
  "kind": "def",
  "lexical_name": "compLeftRingHom",
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
  "slug": "compleftringhom--22ed107bfd5f5c42e0dd347e",
  "source": {
    "blob": "ace864e66f99f33cf6676f77febc2ca7dedf8434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 193,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22ed107bfd5f5c42e0dd347e0af2ba84eee43f70c908da618be36cd332cbd921",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07aaf670941b073970804a1f5cc7bbf750ce50ca56043698722c2a077a5553c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compLeftRingHom {R' : Type*} [Ring R'] [TopologicalSpace R'] [ChartedSpace H' R']
    [ContMDiffRing I' n R'] {R'' : Type*} [Ring R''] [TopologicalSpace R''] [ChartedSpace H'' R'']
    [ContMDiffRing I'' n R''] (φ : R' →+* R'') (hφ : ContMDiff I' I'' n φ) :
    C^n⟮I, N; I', R'⟯ →+* C^n⟮I, N; I'', R''⟯ :=
  { ContMDiffMap.compLeftMonoidHom I N φ.toMonoidHom hφ,
    ContMDiffMap.compLeftAddMonoidHom I N φ.toAddMonoidHom hφ with
    toFun := fun f => ⟨φ ∘ f, hφ.comp f.contMDiff⟩ }

variable (I') {N}

/-- For a "`C^n` ring" `R` and open sets `U ⊆ V` in `N`, the "restriction" ring homomorphism from
`C^n⟮I, V; I', R⟯` to `C^n⟮I, U; I', R⟯`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace864e66f99f33cf6676f77febc2ca7dedf8434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
