# Derivation.liftKaehlerDifferential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5972aea0ff1f10f24a84740e97fe5facee6208f34feb157fc4aa55c5e90cada",
  "kind": "def",
  "lexical_name": "Derivation.liftKaehlerDifferential",
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
  "slug": "derivation-liftkaehlerdifferential--c3002d87eb044ff69443377f",
  "source": {
    "blob": "1c1fe70d47bb7cdccaadf34cbb0f82c0fe688d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 263,
    "path": "GRWTSK/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3002d87eb044ff69443377f10d2a00e5b689ce1e23b781d289216f0244ad125",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5972aea0ff1f10f24a84740e97fe5facee6208f34feb157fc4aa55c5e90cada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Derivation.liftKaehlerDifferential (D : Derivation R S M) : Ω[S⁄R] →ₗ[S] M := by
  refine LinearMap.comp ((((KaehlerDifferential.ideal R S) •
    (⊤ : Submodule (S ⊗[R] S) (KaehlerDifferential.ideal R S))).restrictScalars S).liftQ ?_ ?_)
    (Submodule.Quotient.restrictScalarsEquiv S _).symm.toLinearMap
  · exact D.tensorProductTo.comp ((KaehlerDifferential.ideal R S).subtype.restrictScalars S)
  · intro x hx
    rw [LinearMap.mem_ker]
    refine Submodule.smul_induction_on ((Submodule.restrictScalars_mem _ _ _).mp hx) ?_ ?_
    · rintro x hx y -
      rw [RingHom.mem_ker] at hx
      dsimp
      rw [Derivation.tensorProductTo_mul, hx, y.prop, zero_smul, zero_smul, zero_add]
    · intro x y ex ey; rw [map_add, ex, ey, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1fe70d47bb7cdccaadf34cbb0f82c0fe688d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
