# coindToInd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1738638b06e7d217a9af177adbfae31ca8c6ef78bb37d0f68bcbb17edd561e63",
  "kind": "def",
  "lexical_name": "coindToInd",
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
  "slug": "coindtoind--54114a223b25ec24ef1e176f",
  "source": {
    "blob": "00d62c420753b9a887a6529dd3a0bd42b5ce3450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant38c398bd550d9ac53824669fb69ab69a6c5c0b8b258ec4a2c128f5fad625cdd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54114a223b25ec24ef1e176f2538d5941fe965606bda6d79e9b004064b7b61a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteIndex/Variant38c398bd550d9ac53824669fb69ab69a6c5c0b8b258ec4a2c128f5fad625cdd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1738638b06e7d217a9af177adbfae31ca8c6ef78bb37d0f68bcbb17edd561e63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coindToInd : coind S.subtype A →ₗ[k] ind S.subtype A where
  toFun f := ∑ g : Quotient (QuotientGroup.rightRel S), Quotient.liftOn g (fun g =>
    IndV.mk S.subtype _ g (f.1 g)) fun g₁ g₂ ⟨s, (hs : _ * _ = _)⟩ =>
      (Submodule.Quotient.eq _).2 <| Coinvariants.mem_ker_of_eq s
        (.single g₂ 1 ⊗ₜ[k] f.1 g₂) _ <| by have := f.2 s g₂; simp_all
  map_add' _ _ := by simpa [← Finset.sum_add_distrib, TensorProduct.tmul_add] using
      Finset.sum_congr rfl fun z _ => Quotient.inductionOn z fun _ => by simp
  map_smul' _ _ := by simpa [Finset.smul_sum] using Finset.sum_congr rfl fun z _ =>
    Quotient.inductionOn z fun _ => by simp

omit [DecidableRel (QuotientGroup.rightRel S)] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteIndex/Variant38c398bd550d9ac53824669fb69ab69a6c5c0b8b258ec4a2c128f5fad625cdd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant38c398bd550d9ac53824669fb69ab69a6c5c0b8b258ec4a2c128f5fad625cdd6.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d62c420753b9a887a6529dd3a0bd42b5ce3450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
