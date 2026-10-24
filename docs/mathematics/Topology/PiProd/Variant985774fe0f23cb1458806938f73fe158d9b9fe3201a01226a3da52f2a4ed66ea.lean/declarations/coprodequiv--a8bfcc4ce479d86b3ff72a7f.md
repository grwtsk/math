# coprodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42b5f56ca27bb3bc5057abe6777409b0fb367781a30a31c5bb114da95dc78dec",
  "kind": "def",
  "lexical_name": "coprodEquiv",
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
  "slug": "coprodequiv--a8bfcc4ce479d86b3ff72a7f",
  "source": {
    "blob": "644ce80ee538180c4241f9bf5c53c25a92ff9b71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 411,
    "path": "GRWTSK/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8bfcc4ce479d86b3ff72a7fde70aeb75c82019ac936879e016cee4de3aaf0e2",
  "verification": {
    "reference": "docs/verification/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42b5f56ca27bb3bc5057abe6777409b0fb367781a30a31c5bb114da95dc78dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coprodEquiv [ContinuousAdd M₁] [ContinuousAdd M₂] [Semiring S] [Module S M]
    [ContinuousConstSMul S M] [SMulCommClass R S M] :
    ((M₁ →L[R] M) × (M₂ →L[R] M)) ≃ₗ[S] M₁ × M₂ →L[R] M where
  toFun f := f.1.coprod f.2
  invFun f := (f.comp (.inl ..), f.comp (.inr ..))
  left_inv f := by simp
  right_inv f := by simp [← comp_coprod f (.inl R M₁ M₂)]
  map_add' a b := coprod_add ..
  map_smul' r a := by
    dsimp
    ext <;> simp [smul_apply]

end AddCommMonoid

section AddCommGroup

variable [AddCommGroup M] [Module R M] [ContinuousAdd M] [AddCommMonoid M₁] [Module R M₁]
  [AddCommGroup M₂] [Module R M₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644ce80ee538180c4241f9bf5c53c25a92ff9b71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
